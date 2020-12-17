import html
from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.http import JsonResponse
from django.shortcuts import redirect
from django.http import HttpResponseRedirect
from django.utils.safestring import SafeData, SafeString, mark_safe
from django.contrib.auth.models import Permission
from django.contrib.auth.models import User, auth
from UserInfo.models import UserInfo
from django.core.paginator import Paginator
from location.models import City, Area
from Inbox.models import Inbox as Emails
from Notification.models import Notification as My_Notification
from Subscriber.models import Subscriber as SubscribedUser
from Wishlist.models import Wishes
import datetime
from master.models import Master,Role,TermsCondition,SafetyTips,Benefits
from PropertySettings.models import Category, Facilities, Unit, PropertyTagsType, Facing, PropertyTag, Specification
from property.models import Unit,Tags,facilities, Property, Purpose_id,Property_type_id, Specification,PropertyImage, PropertyVideo, condition
from django.utils.datastructures import MultiValueDictKeyError
from django.contrib import messages
from jamsproperty import settings
from django.core.mail import send_mail

@login_required(login_url='/admin/login/')
def count_notification(request):

    count_my_notification = My_Notification.objects.filter(notify_to=request.user.id).exclude(seen_at__isnull=False).count()

    if "count_my_notification" in request.session:
        return request.session['count_my_notification']

    return count_my_notification

def get_notification(request):

    my_notification = My_Notification.objects.filter(notify_to=request.user.id).order_by('-id')[:5].all()

    if "my_notification" in request.session:
        return request.session['my_notification']

    return my_notification

def get_inbox_permission(request):

    inbox_permission = Permission.objects.filter(user=request.user, name='Can add inbox').first()

    return inbox_permission

def adminDashboard(request):
    title = "Admin Dashboard"
    current_user = request.user

    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first();
    followup     = current_user.has_perm('followup')
    permissions = Permission.objects.filter(user=request.user,name='Can view property').first()

    total_properties    = Property.objects.filter(Status = '1').count()
    total_agent         = UserInfo.objects.exclude(agent_code = "").count()
    total_sell          = Property.objects.filter(Status = '1',Purpose = '3').count()
    total_rent          = Property.objects.filter(Status = '1',Purpose = '2').count()
    total_user          = User.objects.count()
    total_admin         = UserInfo.objects.filter(role_id = 4).count()
    total_supper_admin  = User.objects.filter(is_superuser=True).count()

    my_agent_code    = UserInfo.objects.filter(reg_user_id = current_user.id).first()
    # return HttpResponse(my_agent_code.agent_code)
    my_refferers     = UserInfo.objects.filter(refference_by = my_agent_code.agent_code).count()
    posted_properties= Property.objects.filter(Posted_by=request.user.id).count()
    my_approvals     = Property.objects.filter(Posted_by=request.user.id,Status='1').count()
    my_pandings      = Property.objects.filter(Posted_by=request.user.id,Status='0').count()

    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).order_by('-id')[:5].all()

    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)

    return render(request,'backend/dashboard.html',{
        'title':title,
        'current_user':current_user,
        'get_userinfo':get_userinfo,
        'followup':followup,
        'permissions':permissions,
        'total_properties':total_properties,
        'total_agent':total_agent,
        'total_sell':total_sell,
        'total_rent':total_rent,
        'total_user':total_user,
        'count_unread_emails':count_unread_emails,
        'recieve_emails':recieve_emails,
        'count_my_notification':count_my_notification,
        'my_notification':my_notification,
        'my_agent_code':my_agent_code,
        'my_refferers':my_refferers,
        'posted_properties':posted_properties,
        'my_approvals':my_approvals,
        'my_pandings':my_pandings,
        'total_admin':total_admin,
        'total_supper_admin':total_supper_admin,
        })
@login_required(login_url='/admin/login/')

def Properties(request):
    title = "Property List"

    current_user = request.user
    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first();

    get_proerty  = Property.objects.order_by('-id').all()
    followup     = current_user.has_perm('followup.add_followup')
    permissions = Permission.objects.filter(user=request.user,name='Can view property').first()

    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).order_by('-id')[:5].all()

    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)

    return render(request,'backend/property/properties.html',{
        'title':title,
        'current_user':current_user,
        'get_userinfo':get_userinfo,
        'get_proerty':get_proerty,
        'followup':followup,
        'permissions':permissions,
        'count_unread_emails':count_unread_emails,
        'recieve_emails':recieve_emails,
        'count_my_notification':count_my_notification,
        'my_notification':my_notification,
        })
@login_required(login_url='/admin/login/')
def Property_details(request,id):

    title               = "Property Details"

    properties          = Property.objects.filter(id=id).first()

    property_image      = PropertyImage.objects.filter(Property_id_id=id).order_by('-id').all()
    active_image        = PropertyImage.objects.filter(Property_id_id=id).first()
    active_video        = PropertyVideo.objects.filter(Property_id_id=id).first()
    property_fecilities = facilities.objects.filter(Property_id=id).all()
    Fecilities          = Facilities.objects.all()

    related_properties  = Property.objects.filter(Property_tag_type_id=properties.Property_tag_type_id)[:4].all()
    latest_properties   = Property.objects.order_by('-id')[:4].all()
    user_details        = UserInfo.objects.filter(reg_user_id=properties.Posted_by).first()
    property_tegs       = Tags.objects.filter(Property_id=id).all()
    populer_tags        = PropertyTag.objects.all()
    property_categories = Category.objects.all()

    get_property_tags   = Tags.objects.filter(Property_id = id).all()

    current_user 		= request.user
    get_userinfo 		= UserInfo.objects.filter(reg_user_id=request.user.id).first();
    followup            = current_user.has_perm('followup.add_followup')
    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()
    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).order_by('-id')[:5].all()

    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)

    return render(request, 'backend/property/view.html', {
        'title': title,
        'properties': properties,
        'property_image':property_image,
        'active_image':active_image,
        'Fecilities':Fecilities,
        'property_fecilities':property_fecilities,
        'get_property_tags':get_property_tags,
        'active_video':active_video,
        'related_properties':related_properties,
        'property_tegs':property_tegs,
        'property_categories':property_categories,
        'latest_properties':latest_properties,
        'current_user':current_user,
        'get_userinfo':get_userinfo,
        'followup':followup,
        'permissions':permissions,
        'count_unread_emails':count_unread_emails,
        'recieve_emails':recieve_emails,
        'count_my_notification':count_my_notification,
        'my_notification':my_notification,
    })
@login_required(login_url='/admin/login/')
def Property_edit(request,id):

    title               = 'Edit Property'
    units               = Unit.objects.all()
    cities              = City.objects.all()
    property_tags_types = PropertyTagsType.objects.all()
    purposes            = Purpose_id
    Condition           = condition
    property_type       = Property_type_id
    facing              = Facing.objects.all()
    all_facility        = Facilities.objects.all()
    # pro_cat             = Category.objects.all()
    terms_conditions    = TermsCondition.objects.all()
    safty_tips          = SafetyTips.objects.all()
    benifits            = Benefits.objects.all()

    get_property        = Property.objects.filter(id=id).first()
    get_images          = PropertyImage.objects.filter(Property_id_id=id).all()
    get_facility        = facilities.objects.filter(Property_id=id).all()

    checked_facilities  = facilities.objects.filter(Property_id=id).values('ficilities_id').all()
    unchack_facilities  = Facilities.objects.exclude(id__in=checked_facilities).all()

    get_tags            = Tags.objects.filter(Property_id=id).all()
    checked_tags        = Tags.objects.filter(Property_id=id).values('tags').all()
    unchecked_tags      = PropertyTag.objects.exclude(id__in=checked_tags).filter(property_tag_type=get_property.Property_tag_type_id).all()

    areas               = Area.objects.filter(city_id=get_property.City).all()

    current_user 		= request.user
    get_userinfo 		= UserInfo.objects.filter(reg_user_id=request.user.id).first();
    followup            = current_user.has_perm('followup.add_followup')
    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()

    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).order_by('-id')[:5].all()
    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)

    args = {'get_property':get_property,
            'get_images':get_images,
            'get_facility':get_facility,
            'unchack_facilities':unchack_facilities,
            'terms_conditions':terms_conditions,
            'safty_tips':safty_tips,
            'benifits':benifits,
            'title':title,
            'units': units,
            'purposes': purposes,
            'cities': cities,
            'areas': areas,
            'property_tags_types': property_tags_types,
            'property_type': property_type,
            'facing': facing,
            'all_facility':all_facility,
            # 'pro_cat':pro_cat,
            'get_tags':get_tags,
            'unchecked_tags':unchecked_tags,
            'current_user':current_user,
            'get_userinfo':get_userinfo,
            'followup':followup,
            'permissions':permissions,
            'count_unread_emails':count_unread_emails,
            'recieve_emails':recieve_emails,
            'count_my_notification':count_my_notification,
            'my_notification':my_notification,
            'Condition':Condition,
            }

    return render(request, "backend/property/edit.html", args)
def del_property_image(request,id):

    de_property_image = PropertyImage.objects.filter(id=id).delete()

    return HttpResponse(id)
def Property_delete(request,id):

    del_property = Property.objects.filter(id=id).delete()

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

@login_required(login_url='/admin/login/')
def updateProperty(request):

    tag_names           = request.POST.getlist('tag_name')
    property_facilities = request.POST.getlist('facilitie')
    images              = request.FILES.getlist('images')
    videos              = request.FILES.getlist('videos')
    id                  = request.POST['id']

    update_property     = Property.objects.get(id=request.POST['id'])
    update_tags         = Tags.objects.filter(Property_id=request.POST['id'])
    update_fecility     = facilities.objects.filter(Property_id=request.POST['id'])
    update_image        = PropertyImage.objects.filter(Property_id_id=request.POST['id'])
    update_video        = PropertyVideo.objects.filter(Property_id_id=request.POST['id'])

    if tag_names:
        update_tags.delete()

    if property_facilities:
        update_fecility.delete()

    # if images:
    #     update_image.delete()

    if videos:
        update_video.delete()

    update_property.Property_title  = request.POST['title']
    update_property.Price           = request.POST['price']
    update_property.Size            = request.POST['size']
    update_property.Property_lebel  = request.POST['Property_lebel']
    update_property.totalFloor      = request.POST['totalFloor']
    # update_property.Category        = Category(request.POST['pro_cat'])
    update_property.Unit            = Unit(request.POST['unit'])
    update_property.Facing          = Facing(request.POST['facing'])
    update_property.Purpose         = request.POST['type_of_ad']
    update_property.Bed             = request.POST['bed']
    update_property.Bath            = request.POST['bath']
    update_property.Belcony         = request.POST['Belcony']
    update_property.Car_parking     = request.POST['Car_parking']
    update_property.City            = City(request.POST['city'])
    update_property.Area            = Area(request.POST['area'])
    update_property.Property_tag_type= PropertyTagsType(request.POST['tag_type'])
    update_property.Road_no         = request.POST['Road_no']
    update_property.Holding_no      = request.POST['Holding_no']
    update_property.location        = request.POST['address']
    update_property.Status          = 0
    update_property.Condition       = request.POST['condition']
    update_property.Posted_time     = datetime.datetime.now()
    update_property.Description     = request.POST['description']

    try:
        update_property.Thumbnail   = request.FILES['Thumbnail']
        update_property.save()
    except MultiValueDictKeyError:
        update_property.save()

    for tag_name in tag_names:
        proprty_tag = Tags(Property=Property(id), tags_id=tag_name)
        proprty_tag.save()

    for property_facilitie in property_facilities:
            pro_facilities = facilities(Property=Property(id), ficilities_id=property_facilitie)
            pro_facilities.save()

    for image in images:
        proprty_image = PropertyImage(Property_id=Property(id), Image=image)
        proprty_image.save()

    for video in videos:
        proprty_video = PropertyVideo(Property_id=Property(id), property_video=video)
        proprty_video.save()

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
@login_required(login_url='/admin/login/')
def action(request,id,id2):
    up_property = Property.objects.filter(id=id2).update(Status=id)
    get_property = Property.objects.filter(id=id2).first()
    user_email   = get_property.Posted_by.email

    get_property = Property.objects.filter(id=id2).first()
    if id == 1:
        status = 'Approved'
    elif id == 0:
        status = 'Pending'
    elif id == 2:
        status = 'Sold Out'
    else:
        status = 'Rented'

    send_notification = My_Notification(
                                notify_to       = User(get_property.Posted_by.id),
                                notify_for      = Property(get_property.id),
                                notify_time     = datetime.datetime.now(),
                                notify_message  = 'Your Property is '+status,
                            )
    send_notification.save()

    subject = "Jams Property Property Alert."

    if status == 'Pending':
        msg     = "Your Property is : "+ status
    else:
        msg     = "Congratulations sir! Your Property has been : "+ status

    to      = user_email
    res     = send_mail(subject,msg,settings.EMAIL_HOST_USER, [to])

    send_message = Emails(sender_email='sales@jamsproperty.com',
                        send_to=user_email,
                        subject=subject,
                        message=msg,
                        sendTime=datetime.datetime.now(),)
    send_message.save()

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))


################################ Inboxes #######################################
@login_required(login_url='/admin/login/')

def Inbox(request):
    title = "Inboxes"
    current_user = request.user
    followup     = current_user.has_perm('followup.add_followup')
    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    get_users    = User.objects.exclude(id=request.user.id).all()
    if followup:
        get_emails   = Emails.objects.exclude(status='1').filter(send_to='sales@jamsproperty.com')|Emails.objects.filter(send_to='info@jamsproperty.com').order_by('-id').all()
    else:
        get_emails   = Emails.objects.filter(send_to=current_user.email).exclude(status='1').order_by('-id').all()

    get_important_mail = Emails.objects.filter(send_to=current_user.email,status='2').exclude(status='3').all()

    count_emails        = get_emails.count()
    count_important_emails   = get_important_mail.count()

    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()

    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification   = count_notification(request)
    my_notification         = get_notification(request)
    inbox_permission        = get_inbox_permission(request)

    get_email = Emails.objects.filter(status=2).all()


    return render(request, "backend/inbox/messages.html",{
        'title' : title,
        'current_user'  : current_user,
        'get_userinfo'  : get_userinfo,
        'get_users'     : get_users,
        'get_emails'    : get_emails,
        'count_emails'  : count_emails,
        'count_important_emails'  : count_important_emails,
        'followup'  : followup,
        'permissions'  : permissions,
        'inbox_permission'  : inbox_permission,
        'count_unread_emails'  : count_unread_emails,
        'recieve_emails'  : recieve_emails,
        'count_my_notification'  : count_my_notification,
        'my_notification'  : my_notification,
        })

def compose(request):
    title = "Compose Message"
    current_user = request.user
    followup     = current_user.has_perm('followup.add_followup')
    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    get_users    = User.objects.exclude(id=request.user.id).all()


    get_important_mail = Emails.objects.filter(send_to=current_user.email,status='2').exclude(status='3').all()

    count_important_emails   = get_important_mail.count()

    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()

    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification   = count_notification(request)
    my_notification         = get_notification(request)
    inbox_permission        = get_inbox_permission(request)

    return render(request, "backend/inbox/compose.html",{
        'title' : title,
        'current_user'  : current_user,
        'get_userinfo'  : get_userinfo,
        'get_users'     : get_users,
        'count_important_emails'  : count_important_emails,
        'followup'  : followup,
        'permissions'  : permissions,
        'inbox_permission'  : inbox_permission,
        'count_unread_emails'  : count_unread_emails,
        'recieve_emails'  : recieve_emails,
        'count_my_notification'  : count_my_notification,
        'my_notification'  : my_notification,
        })
def sent(request):
    title = "Inboxes"
    current_user = request.user
    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    get_users    = User.objects.exclude(id=request.user.id).all()
    all_emails   = Emails.objects.filter(send_to=current_user.email).exclude(status='3').all()
    followup            = current_user.has_perm('followup.add_followup')
    if followup:
        get_emails   = Emails.objects.exclude(status='3').exclude(status='1').filter(sender_email='sales@jamsproperty.com')|Emails.objects.filter(sender_email=current_user.email)|Emails.objects.filter(sender_email='info@jamsproperty.com').order_by('-id').all()
    else:
        # return HttpResponse(current_user.email)
        # get_emails   = Emails.objects.exclude(status='3').filter(sender_email=current_user.email)|Emails.objects.exclude(status='1').order_by('-id').all()
        get_emails     = Emails.objects.filter(sender_email=current_user.email).exclude(status='3').exclude(status='1').order_by('-id').all()

    get_important_mail      = Emails.objects.filter(send_to=current_user.email,status='2').exclude(status='3').all()

    count_important_emails  = get_important_mail.count()
    count_emails            = all_emails.count()
    # followup                = current_user.has_perm('followup.add_followup')
    permissions             = Permission.objects.filter(user=request.user,name='Can view property').first()

    count_unread_emails     = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails          = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification   = count_notification(request)
    my_notification         = get_notification(request)
    inbox_permission        = get_inbox_permission(request)

    return render(request, "backend/inbox/messages.html",{
        'title' : title,
        'current_user'  : current_user,
        'get_userinfo'  : get_userinfo,
        'get_users'     : get_users,
        'get_emails'    : get_emails,
        'count_emails'  : count_emails,
        'count_important_emails'  : count_important_emails,
        'followup'  : followup,
        'permissions'  : permissions,
        'inbox_permission'  : inbox_permission,
        'count_unread_emails'  : count_unread_emails,
        'recieve_emails'  : recieve_emails,
        'count_my_notification'  : count_my_notification,
        'my_notification'  : my_notification,
        })

def important(request):
    title = "Inboxes"
    current_user = request.user
    followup            = current_user.has_perm('followup.add_followup')
    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    get_users    = User.objects.exclude(id=request.user.id).all()
    if followup:
        get_emails   = Emails.objects.filter(send_to='sales@jamsproperty.com',status='2')|Emails.objects.filter(send_to='info@jamsproperty.com',status='2').exclude(status='3').exclude(status='1').order_by('-id').all()
        # get_emails   = Emails.objects.filter(status='2').order_by('-id').all()
    else:
        # get_emails   = Emails.objects.filter(send_to=current_user.email,status=2).exclude(status='3')|Emails.objects.exclude(status='1').order_by('-id').all()
        get_emails   = Emails.objects.filter(send_to=current_user.email,status=2).exclude(status='3').exclude(status='1').order_by('-id').all()

    all_emails   = Emails.objects.filter(send_to=current_user.email).exclude(status='3').all()

    get_important_mail      = Emails.objects.filter(send_to=current_user.email, status='2').exclude(status='3').all()
    count_important_emails  = get_important_mail.count()
    count_emails            = all_emails.count()
    # followup            = current_user.has_perm('followup.add_followup')
    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()

    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification  = count_notification(request)
    my_notification     = get_notification(request)
    inbox_permission        = get_inbox_permission(request)

    return render(request, "backend/inbox/messages.html",{
        'title' : title,
        'current_user'  : current_user,
        'get_userinfo'  : get_userinfo,
        'get_users'     : get_users,
        'get_emails'    : get_emails,
        'count_emails'  : count_emails,
        'count_important_emails'  : count_important_emails,
        'followup'  : followup,
        'permissions'  : permissions,
        'inbox_permission'  : inbox_permission,
        'count_unread_emails'  : count_unread_emails,
        'recieve_emails'  : recieve_emails,
        'count_my_notification'  : count_my_notification,
        'my_notification'  : my_notification,
        })

def trash(request):
    title = "Inboxes"
    current_user = request.user
    followup            = current_user.has_perm('followup.add_followup')
    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    get_users    = User.objects.exclude(id=request.user.id).all()

    if followup:
        get_emails   = Emails.objects.filter(send_to='sales@jamsproperty.com',status='1')|Emails.objects.filter(send_to='info@jamsproperty.com',status='1').exclude(status='3').exclude(status='1').order_by('-id').all()
        # get_emails   = Emails.objects.filter(status='1').order_by('-id').all()
    else:
        get_emails   = Emails.objects.filter(send_to=current_user.email,status='1').order_by('-id').all()

    all_emails   = Emails.objects.filter(send_to=current_user.email).exclude(status='3').all()

    get_important_mail      = Emails.objects.filter(send_to=current_user.email, status='2').exclude(status='3').all()
    count_important_emails   = get_important_mail.count()
    count_emails = all_emails.count()

    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()
    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails          = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)
    inbox_permission        = get_inbox_permission(request)

    return render(request, "backend/inbox/messages.html",{
        'title' : title,
        'current_user'  : current_user,
        'get_userinfo'  : get_userinfo,
        'get_users'     : get_users,
        'get_emails'    : get_emails,
        'count_emails'  : count_emails,
        'count_important_emails'  : count_important_emails,
        'followup'  : followup,
        'permissions'  : permissions,
        'inbox_permission'  : inbox_permission,
        'count_unread_emails'  : count_unread_emails,
        'recieve_emails'  : recieve_emails,
        'count_my_notification'  : count_my_notification,
        'my_notification'  : my_notification,
        })

def delete(request,id):
    title = "Inboxes"

    del_inbox = Emails.objects.filter(id=id).delete()

    current_user = request.user
    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    get_users    = User.objects.exclude(id=request.user.id).all()
    get_emails   = Emails.objects.filter(send_to=current_user.email).exclude(status='3').all()
    get_important_mail = Emails.objects.filter(send_to=current_user.email,status='2').exclude(status='3').all()

    count_emails        = get_emails.count()
    count_important_emails   = get_important_mail.count()
    followup            = current_user.has_perm('followup.add_followup')
    permissions = Permission.objects.filter(user=request.user,name='Can view property').first()

    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)
    inbox_permission        = get_inbox_permission(request)

    get_email = Emails.objects.filter(status=2).all()

    # return HttpResponse(get_email)

    return render(request, "backend/inbox/messages.html",{
        'title' : title,
        'current_user'  : current_user,
        'get_userinfo'  : get_userinfo,
        'get_users'     : get_users,
        'get_emails'    : get_emails,
        'count_emails'  : count_emails,
        'count_important_emails'  : count_important_emails,
        'followup'  : followup,
        'permissions'  : permissions,
        'inbox_permission'  : inbox_permission,
        'count_unread_emails'  : count_unread_emails,
        'recieve_emails'  : recieve_emails,
        'count_my_notification'  : count_my_notification,
        'my_notification'  : my_notification,
        })

@login_required(login_url='/admin/login/')
def sendEmail(request):
    send_to     = request.POST.get('send_to')
    sender_name = request.POST['sender']
    subject     = request.POST['subject']
    message     = request.POST['message']

    if send_to:
        get_all_user = request.POST.getlist('send_to')

        for x in get_all_user:

            subject = subject
            msg     = html.unescape(message)
            to      = x
            res     = send_mail(subject,msg,settings.EMAIL_HOST_USER, [to], fail_silently=False)

            send_message = Emails(sender_email=sender_name,
                send_to=x,
                subject=subject,
                message=message,
                sendTime=datetime.datetime.now(),)
            send_message.save()

    else:
        get_all_user = SubscribedUser.objects.all()

        for x in get_all_user:

            subject = subject
            msg     = message
            to      = x.email
            res     = send_mail(subject,msg,settings.EMAIL_HOST_USER, [to])

            send_message = Emails(sender_email=sender_name,
                send_to=x.email,
                subject=subject,
                message=message,
                sendTime=datetime.datetime.now(),)

            send_message.save()

    messages.success(request,'Email Sent Successfully !!')
    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

def viewEmail(request,id):
    title = 'View Email'
    current_user= request.user
    get_userinfo= UserInfo.objects.filter(reg_user_id=request.user.id).first()

    view_email      = Emails.objects.filter(id=id).first()
    replay_email    = Emails.objects.filter(parent_id=id).all()
    seen_time   = Emails.objects.exclude(sender_email=request.user.email).filter(id=id).update(seenTime = datetime.datetime.now())

    followup            = current_user.has_perm('followup.add_followup')
    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()
    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails          = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)
    inbox_permission        = get_inbox_permission(request)

    seen_inbox          = Emails.objects.filter(id=id).update(seenTime=datetime.datetime.now())
    all_emails   = Emails.objects.filter(send_to=current_user.email).exclude(status='3').all()

    get_important_mail      = Emails.objects.filter(send_to=current_user.email, status='2').exclude(status='3').all()
    count_important_emails  = get_important_mail.count()

    count_emails = all_emails.count()
    return render(request, "backend/inbox/view.html",{
        'title' : title,
        'current_user' : current_user,
        'get_userinfo' : get_userinfo,
        'view_email' : view_email,
        'replay_email' : replay_email,
        'followup' : followup,
        'permissions' : permissions,
        'inbox_permission' : inbox_permission,
        'count_important_emails' : count_important_emails,
        'count_emails' : count_emails,
        'count_unread_emails' : count_unread_emails,
        'recieve_emails' : recieve_emails,
        'count_my_notification' : count_my_notification,
        'my_notification' : my_notification,
        'get_important_mail' : get_important_mail,
        })
def replayEmail(request):
    parent_id   = request.POST['email_id']
    send_to     = request.POST['send_to']
    sender_name = request.POST['sender']
    subject     = request.POST['subject']
    message     = request.POST['message']

    # return HttpResponse(sender_name)

    msg     = message
    to      = send_to
    res     = send_mail(subject,msg,settings.EMAIL_HOST_USER, [to])

    replay_message = Emails(sender_email=sender_name,
        send_to     = send_to,
        subject     = subject,
        message     = message,
        parent_id   = parent_id,
        sendTime    = datetime.datetime.now(),)

    replay_message.save()

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

def notification_list(request):
    title = "Inboxes"
    current_user = request.user
    get_userinfo = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    get_users    = User.objects.exclude(id=request.user.id).all()
    get_emails   = Emails.objects.exclude(status='3').all()

    permissions  = Permission.objects.filter(user=request.user,name='Can view property').first()
    followup     = current_user.has_perm('followup.add_followup')

    count_unread_emails     = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails          = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()

    my_notification        = My_Notification.objects.filter(notify_to=request.user.id).all()
    count_my_notification  = count_notification(request)

    return render(request, "backend/notification/notification.html",{
        'title' : title,
        'current_user'  : current_user,
        'get_userinfo'  : get_userinfo,
        'get_users'     : get_users,
        'get_emails'    : get_emails,
        'permissions'   :permissions,
        'followup'      :followup,
        'count_unread_emails' :count_unread_emails,
        'recieve_emails'      :recieve_emails,
        'count_my_notification':count_my_notification,
        'my_notification'  :my_notification,
        })

def Notification_details(request,id):
    title               = "Notification Details"

    seen_notification = My_Notification.objects.filter(id=id).update(seen_at=datetime.datetime.now())

    notification        = My_Notification.objects.filter(id=id).first()
    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()

    current_user        = request.user
    get_userinfo        = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    followup            = current_user.has_perm('followup.add_followup')
    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)
    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)

    return render(request, 'backend/notification/view.html', {
        'title': title,
        'notification': notification,
        'permissions':permissions,
        'current_user':current_user,
        'get_userinfo':get_userinfo,
        'followup':followup,
        'count_unread_emails':count_unread_emails,
        'recieve_emails':recieve_emails,
        'count_my_notification':count_my_notification,
        'my_notification':my_notification,
    })
def Inboxaction(request):
    action = request.POST['action']
    mail_id = request.POST.getlist('mail_id')

    if action == '3':

        for x in mail_id:
            up_email = Emails.objects.filter(id=x).delete()
    else:
        for x in mail_id:
            up_email = Emails.objects.filter(id=x).update(status=action)

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

def my_wishes(request):
    title = "Wish Lists"

    permissions         = Permission.objects.filter(user=request.user,name='Can view property').first()
    # wish_permissions    = Permission.objects.filter(user=request.user,name='Can view wish').first()

    current_user        = request.user
    get_userinfo        = UserInfo.objects.filter(reg_user_id=request.user.id).first()
    followup            = current_user.has_perm('followup.add_followup')
    wish_followup       = current_user.has_perm('Wishlist.view_wishes')

    count_unread_emails = Emails.objects.filter(send_to=current_user.email,seenTime__isnull = True).exclude(status='3').count()
    recieve_emails      = Emails.objects.filter(send_to=current_user.email).exclude(status='3').order_by('-id')[:5].all()
    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)
    count_my_notification  = count_notification(request)
    my_notification        = get_notification(request)
    if wish_followup:
        my_wish = Wishes.objects.order_by('-id').all()
    else:
        my_wish = Wishes.objects.filter(user_id=current_user).order_by('-id').all()

    return render(request, 'backend/wishes/index.html', {
        'title': title,
        'my_wish': my_wish,
        'permissions':permissions,
        'current_user':current_user,
        'get_userinfo':get_userinfo,
        'followup':followup,
        'count_unread_emails':count_unread_emails,
        'recieve_emails':recieve_emails,
        'count_my_notification':count_my_notification,
        'my_notification':my_notification,
    })

def del_wishes(request,id):

    current_user        = request.user.id
    wish_followup       = request.user.has_perm('Wishlist.view_wishes')
    if wish_followup:
        del_wish = Wishes.objects.filter(id=id).delete()
    else:
        del_wish = Wishes.objects.filter(id=id,user_id = current_user).delete()

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))






