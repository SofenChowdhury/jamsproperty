from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from django.contrib.auth.hashers import make_password,check_password
from django.contrib.auth.models import User, auth
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.http import JsonResponse
from django.shortcuts import redirect
import uuid
from UserInfo.models import UserInfo
from master.models import Master,Role,TermsCondition,SafetyTips,Benefits
from location.models import City, Area
from About.models import AboutUs,LegalSupport,FinencialSupport,Faq,ContactUs,Testimonial,CompanyVideo
from slider.models import Slider
from Wishlist.models import Wishes
from Advertisement.models import Advertisement
# from Faq.models import Faq
from property.models import Unit,Tags,facilities, Property, Purpose_id,Property_type_id, Specification,PropertyImage, PropertyVideo, condition
from PropertySettings.models import Category, Facilities, Unit, PropertyTagsType, Facing, PropertyTag, Specification
# from testimonial.models import Testimonial
from django.views.generic import View, TemplateView
from django.core.paginator import Paginator
from jamsproperty import settings
from django.core.mail import send_mail
from django.utils.datastructures import MultiValueDictKeyError
from django.contrib import messages

def home(request):
    title = " Home "
    sliders = Slider.objects.all()
    testimonials   = Testimonial.objects.all()

    Office          = Property.objects.filter(Status='1').filter(Property_tag_type_id='1').all()
    Commercial      = Property.objects.filter(Status='1').filter(Property_tag_type_id='2').all()
    Residential     = Property.objects.filter(Status='1').filter(Property_tag_type_id='3').all()
    Land            = Property.objects.filter(Status='1').filter(Property_tag_type_id='6').all()

    get_unit            = Unit.objects.all()
    count_Office        = Office.count()
    count_Commercial    = Commercial.count()
    count_Residential   = Residential.count()
    count_Land          = Land.count()

    commercialTag      = PropertyTag.objects.filter(property_tag_type_id = '2').all()
    residentialTag     = PropertyTag.objects.filter(property_tag_type_id = '3').all()
    landTag            = PropertyTag.objects.filter(property_tag_type_id = '6').all()

    advertisements      = Advertisement.objects.filter(ad_placement=5,status=1).all()
    poopupAdd           = Advertisement.objects.filter(ad_placement=8,status=1).first()

    categories          = PropertyTagsType.objects.all()
    Property_type_tags  = PropertyTagsType.objects.all()
    latest_properties   = Property.objects.filter(Status='1').order_by('-id')[:10].all()
    fetured_properties  = Property.objects.filter(Property_type='2',Status='1').order_by('-id')[:10].all()

    videos = CompanyVideo.objects.filter(status='1').all()
    count_videos = videos.count()

    # all_port = Property.objects.prefetch_related('Property_tag_type')
    # tag_type = [Property.objects.filter(Property_tag_type_id=port.id) for port in property_tag_types]
    # count_data = all_port.count()

    com_details             = ContactUs.objects.first()

    return render(request, 'frontend/home.html', {
        'title': title,
        'sliders': sliders,
        'testimonials': testimonials,
        'count_Office': count_Office,
        'count_Commercial': count_Commercial,
        'count_Residential': count_Residential,
        'count_Land': count_Land,
        'commercialTag': commercialTag,
        'residentialTag': residentialTag,
        'landTag': landTag,
        'categories': categories,
        'latest_properties': latest_properties,
        'fetured_properties': fetured_properties,
        'get_unit': get_unit,
        'Property_type_tags': Property_type_tags,
        'com_details': com_details,
        'advertisements': advertisements,
        'poopupAdd': poopupAdd,
        'count_videos': count_videos,
        'videos': videos,
    })
def AdList(request):

    title = "Properties"
    properties = Property.objects.exclude(Status='0').order_by('-id').all()
    categories = PropertyTagsType.objects.all()
    paginator = Paginator(properties,10)

    commercialTag      = PropertyTag.objects.filter(property_tag_type_id = '2').all()
    residentialTag     = PropertyTag.objects.filter(property_tag_type_id = '3').all()
    landTag            = PropertyTag.objects.filter(property_tag_type_id = '6').all()

    advertisement           = Advertisement.objects.filter(ad_placement=1,status=1).first()
    advertisement_bottom    = Advertisement.objects.filter(ad_placement=2,status=1).first()
    Property_type_tags      = PropertyTagsType.objects.all()
    current_user            = request.user
    com_details             = ContactUs.objects.first()


    try:
        page = int(request.GET.get('page','1'))
    except:
        page = 1
    try:
        posts = paginator.page(page)
    except(EmptyPage, InvalidPage):
        posts = paginator.page(paginator.num_pages)

    return render(request,'frontend/ad-list-right.html',{
        'title' : title,
        'properties':properties,
        'posts':posts,
        'categories':categories,
        'Property_type_tags':Property_type_tags,
        'current_user':current_user,
        'com_details':com_details,
        'advertisement':advertisement,
        'advertisement_bottom':advertisement_bottom,
        'commercialTag':commercialTag,
        'residentialTag':residentialTag,
        'landTag':landTag,
        })
def AdDetails(request,id):

    title = "Property Details"
    properties = Property.objects.filter(id=id).exclude(Status=0).first()

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
    property_categories = PropertyTagsType.objects.all()

    get_property_tags   = Tags.objects.filter(Property_id = id).all()


    com_details         = ContactUs.objects.first()
    advertisement       = Advertisement.objects.filter(ad_placement=3,status=1).first()
    advertisement_bottom= Advertisement.objects.filter(ad_placement=2,status=1).first()
    current_user        = request.user

    commercialTag      = PropertyTag.objects.filter(property_tag_type_id = '2').all()
    residentialTag     = PropertyTag.objects.filter(property_tag_type_id = '3').all()
    landTag            = PropertyTag.objects.filter(property_tag_type_id = '6').all()

    checkWish = Wishes.objects.filter(user_id = current_user.id, property_id = id).first()

    return render(request, 'frontend/ad-details1.html', {
        'title': title,
        'properties': properties,
        'property_image':property_image,
        'active_image':active_image,
        'Fecilities':Fecilities,
        'property_fecilities':property_fecilities,
        'active_video':active_video,
        'related_properties':related_properties,
        'get_property_tags':get_property_tags,
        'user_details':user_details,
        'property_tegs':property_tegs,
        'populer_tags':populer_tags,
        'property_categories':property_categories,
        'com_details':com_details,
        'latest_properties':latest_properties,
        'advertisement':advertisement,
        'advertisement_bottom':advertisement_bottom,
        'current_user':current_user,
        'commercialTag':commercialTag,
        'residentialTag':residentialTag,
        'landTag':landTag,
        'checkWish':checkWish,
    })

def propertySearch(request):

    title           = "Searched Properties"
    pro_title       = request.GET['search_title']
    properties      = Property.objects.filter(Property_title__icontains=pro_title).exclude(Status='0').order_by('-id').all()
    current_user    = request.user
    com_details     = ContactUs.objects.first()

    commercialTag      = PropertyTag.objects.filter(property_tag_type_id = '2').all()
    residentialTag     = PropertyTag.objects.filter(property_tag_type_id = '3').all()
    landTag            = PropertyTag.objects.filter(property_tag_type_id = '6').all()

    active = '1'
    searchTitle = "Searching for "+pro_title
    categories = PropertyTagsType.objects.all()
    paginator = Paginator(properties,10)

    try:
        page = int(request.GET.get('page','1'))
    except:
        page = 1
    try:

        posts = paginator.page(page)
    except(EmptyPage, InvalidPage):
        posts = paginator.page(paginator.num_pages)

    advertisement           = Advertisement.objects.filter(ad_placement=6,status=1).first()
    advertisement_bottom    = Advertisement.objects.filter(ad_placement=7,status=1).first()

    return render(request,'frontend/search.html',{
        'title' : title,
        'pro_title' : pro_title,
        'properties':properties,
        'posts':posts,
        'categories':categories,
        'active':active,
        'current_user':current_user,
        'com_details':com_details,
        'advertisement':advertisement,
        'advertisement_bottom':advertisement_bottom,
        'commercialTag':commercialTag,
        'residentialTag':residentialTag,
        'landTag':landTag,
        'searchTitle':searchTitle,
        })
def propertyRangeSearch(request):

    title = "Searched Properties"

    if request.GET['min_price']:
        min_price = request.GET['min_price']
    else:
        min_price = 0

    if request.GET['max_price']:
        max_price = request.GET['max_price']
    else:
        max_price = 0

    searchTitle = "Searching for Price Range : "+max_price+" To "+ min_price


    properties = Property.objects.filter(Price__range=(min_price,max_price)).exclude(Status='0').order_by('-id').all()
    current_user        = request.user

    commercialTag      = PropertyTag.objects.filter(property_tag_type_id = '2').all()
    residentialTag     = PropertyTag.objects.filter(property_tag_type_id = '3').all()
    landTag            = PropertyTag.objects.filter(property_tag_type_id = '6').all()

    active = '1'
    categories = PropertyTagsType.objects.all()
    paginator = Paginator(properties,10)
    com_details     = ContactUs.objects.first()
    try:
        page = int(request.GET.get('page','1'))
    except:
        page = 1
    try:
        posts = paginator.page(page)
    except(EmptyPage, InvalidPage):
        posts = paginator.page(paginator.num_pages)

    advertisement           = Advertisement.objects.filter(ad_placement=6,status=1).first()
    advertisement_bottom    = Advertisement.objects.filter(ad_placement=7,status=1).first()

    return render(request,'frontend/search.html',{
        'title' : title,
        'properties':properties,
        'posts':posts,
        'categories':categories,
        'active':active,
        'com_details':com_details,
        'current_user':current_user,
        'advertisement':advertisement,
        'advertisement_bottom':advertisement_bottom,
        'commercialTag':commercialTag,
        'residentialTag':residentialTag,
        'landTag':landTag,
        'min_price':min_price,
        'max_price':max_price,
        'searchTitle':searchTitle,
        })
def searchPropertyCat(request,id):
    title = "Searched Properties with Categories"

    properties      = Property.objects.filter(Property_tag_type_id=id).exclude(Status='0').order_by('-id').all()
    current_user    = request.user
    com_details     = ContactUs.objects.first()

    commercialTag      = PropertyTag.objects.filter(property_tag_type_id = '2').all()
    residentialTag     = PropertyTag.objects.filter(property_tag_type_id = '3').all()
    landTag            = PropertyTag.objects.filter(property_tag_type_id = '6').all()

    active      = '1'
    tag_type_name = PropertyTagsType.objects.filter(id = id).first()

    searchTitle = "Searching for "+tag_type_name.type_name+" properties"

    categories  = PropertyTagsType.objects.all()
    paginator   = Paginator(properties,10)

    try:
        page = int(request.GET.get('page','1'))
    except:
        page = 1
    try:
        posts = paginator.page(page)
    except(EmptyPage, InvalidPage):
        posts = paginator.page(paginator.num_pages)

    advertisement           = Advertisement.objects.filter(ad_placement=6,status=1).first()
    advertisement_bottom    = Advertisement.objects.filter(ad_placement=7,status=1).first()

    return render(request,'frontend/search.html',{
        'title' : title,
        'properties':properties,
        'posts':posts,
        'categories':categories,
        'active':active,
        'com_details':com_details,
        'current_user':current_user,
        'advertisement':advertisement,
        'advertisement_bottom':advertisement_bottom,
        'commercialTag':commercialTag,
        'residentialTag':residentialTag,
        'landTag':landTag,
        'searchTitle':searchTitle,
        })

def sort_by(request,id):

    title = "Searched Properties"
    # return HttpResponse(id)
    if id == 1:
        properties = Property.objects.exclude(Status='0').order_by('-id').all()
        searchTitle = "Searching for Latest properties"
    elif id == 2:
        properties = Property.objects.exclude(Status='0').order_by('id').all()
        searchTitle = "Searching for Oldest properties"
    elif id == 3:
        properties = Property.objects.exclude(Status='0').order_by('Price').all()
        searchTitle = "Searching for Price:Low-to-High properties"
    else:
        properties = Property.objects.exclude(Status='0').order_by('-Price').all()
        searchTitle = "Searching for Price:Hight-to-Low properties"

    commercialTag      = PropertyTag.objects.filter(property_tag_type_id = '2').all()
    residentialTag     = PropertyTag.objects.filter(property_tag_type_id = '3').all()
    landTag            = PropertyTag.objects.filter(property_tag_type_id = '6').all()

    active  = '1'
    sort_by = id
    categories      = PropertyTagsType.objects.all()
    paginator       = Paginator(properties,10)
    current_user    = request.user
    com_details     = ContactUs.objects.first()
    try:
        page = int(request.GET.get('page','1'))
    except:
        page = 1
    try:
        posts = paginator.page(page)
    except(EmptyPage, InvalidPage):
        posts = paginator.page(paginator.num_pages)

    advertisement           = Advertisement.objects.filter(ad_placement=6,status=1).first()
    advertisement_bottom    = Advertisement.objects.filter(ad_placement=7,status=1).first()

    return render(request,'frontend/search.html',{
        'title' : title,
        'properties':properties,
        'posts':posts,
        'categories':categories,
        'active':active,
        'sort_by':sort_by,
        'com_details':com_details,
        'current_user':current_user,
        'advertisement':advertisement,
        'advertisement_bottom':advertisement_bottom,
        'commercialTag':commercialTag,
        'residentialTag':residentialTag,
        'landTag':landTag,
        'searchTitle':searchTitle,
        })

def search(request):
    title = "Properties"
    advertisement           = Advertisement.objects.filter(ad_placement=6,status=1).first()
    advertisement_bottom    = Advertisement.objects.filter(ad_placement=7,status=1).first()
    Property_type_tags      = PropertyTagsType.objects.all()
    current_user            = request.user
    com_details             = ContactUs.objects.first()

    commercialTag      = PropertyTag.objects.filter(property_tag_type_id = '2').all()
    residentialTag     = PropertyTag.objects.filter(property_tag_type_id = '3').all()
    landTag            = PropertyTag.objects.filter(property_tag_type_id = '6').all()

    try:
        purpose     = request.GET['purpose']
        property_type = request.GET['property_type']
        bed         = request.GET['bed']
        m_price     = request.GET['min']
        mx_price    = request.GET['max']
        location    = request.GET['location']
        m_size      = request.GET['min_size']
        mx_size     = request.GET['max_size']

    except MultiValueDictKeyError:
        purpose     = request.GET['purpose']
        property_type = request.GET['property_type']
        bed         = request.GET['bed']
        m_price     = request.GET['min']
        mx_price    = request.GET['max']
        location    = request.GET['location']
        m_size      = request.GET['min_size']
        mx_size     = request.GET['max_size']

    if m_size:
        min_size = m_size
    else:
        min_size = 0

    if mx_size:
        max_size = mx_size
    else:
        max_size = 50000

    if m_price:
        min_price = m_price
    else:
        min_price = 0

    if mx_price:
        max_price = mx_price
    else:
        max_price = 50000000000

    tags    = Tags.objects.filter(tags_id=property_type).values('Property').all()

    if purpose == '2':
        active = '2'
        if location:
            if property_type>'0':
                properties = Property.objects.exclude(Status='0').filter(Size__range=(min_size,max_size),location__icontains=location,Purpose='2',id__in=tags,Bed__range=(0,bed),Price__range=(min_price,max_price)).order_by('-id').all()
            else:
                properties = Property.objects.exclude(Status='0').filter(Size__range=(min_size,max_size),location__icontains=location,Purpose='2',Bed__range=(0,bed),Price__range=(min_price,max_price)).order_by('-id').all()

        else:

            if property_type>'0':
                properties = Property.objects.exclude(Status='0').filter(Size__range=(min_size,max_size),Purpose='2',id__in=tags,Bed__range=(0,bed),Price__range=(min_price,max_price)).order_by('-id').all()
            else:
                properties = Property.objects.exclude(Status='0').filter(Size__range=(min_size,max_size),Purpose='2',Bed__range=(0,bed),Price__range=(min_price,max_price)).order_by('-id').all()


        categories = PropertyTagsType.objects.all()
        get_unit   = Unit.objects.all()

        searchTitle = "Location: " +location+ " Purpose: Rent Properties"

        paginator  = Paginator(properties,10)

        try:
            page = int(request.GET.get('page','1'))
        except:
            page = 1
        try:
            posts = paginator.page(page)
        except(EmptyPage, InvalidPage):
            posts = paginator.page(paginator.num_pages)


        return render(request,'frontend/search.html',{
            'title' : title,
            'properties':properties,
            'posts':posts,
            'categories':categories,
            'active':active,
            'get_unit':get_unit,
            'com_details':com_details,
            'current_user':current_user,
            'advertisement':advertisement,
            'advertisement_bottom':advertisement_bottom,
            'commercialTag':commercialTag,
            'residentialTag':residentialTag,
            'landTag':landTag,
            'min_price':min_price,
            'max_price':max_price,
            'searchTitle':searchTitle,
            })
    else:
        active = '1'
        if location:
            if property_type>'0':
                properties = Property.objects.exclude(Status='0').filter(Size__range=(min_size,max_size),location__icontains=location,Purpose='3',id__in=tags,Bed__range=(0,bed),Price__range=(min_price,max_price)).order_by('-id').all()
            else:
                properties = Property.objects.exclude(Status='0').filter(Size__range=(min_size,max_size),location__icontains=location,Purpose='3',Bed__range=(0,bed),Price__range=(min_price,max_price)).order_by('-id').all()

        else:

            if property_type>'0':
                properties = Property.objects.exclude(Status='0').filter(Size__range=(min_size,max_size),Purpose='3',id__in=tags,Bed__range=(0,bed),Price__range=(min_price,max_price)).order_by('-id').all()
            else:
                properties = Property.objects.exclude(Status='0').filter(Size__range=(min_size,max_size),Purpose='3',Bed__range=(0,bed),Price__range=(min_price,max_price)).order_by('-id').all()

        searchTitle = "Location: " +location+ " Purpose: Buy"

        categories = PropertyTagsType.objects.all()
        get_unit   = Unit.objects.all()
        paginator = Paginator(properties,10)

        try:
            page = int(request.GET.get('page','1'))
        except:
            page = 1
        try:
            posts = paginator.page(page)
        except(EmptyPage, InvalidPage):
            posts = paginator.page(paginator.num_pages)

        return render(request,'frontend/search.html',{
            'title' : title,
            'properties':properties,
            'posts':posts,
            'categories':categories,
            'active':active,
            'get_unit':get_unit,
            'Property_type_tags':Property_type_tags,
            'com_details':com_details,
            'current_user':current_user,
            'advertisement':advertisement,
            'advertisement_bottom':advertisement_bottom,
            'commercialTag':commercialTag,
            'residentialTag':residentialTag,
            'landTag':landTag,
            'searchTitle':searchTitle,
            })

class HomeView(TemplateView):
    template_name = 'frontend/home.html'


def FaqView(request):

    title = "FAQs"
    get_faqs = Faq.objects.all()
    return render(request, 'frontend/faq.html', {
        'title': title,
        'get_faqs': get_faqs,
    })

class ContactView(TemplateView):
    template_name = 'frontend/contact.html'


class AdListView(TemplateView):
    template_name = 'frontend/ad-list-right.html'


class ForgotPasswordView(TemplateView):
    template_name = 'frontend/forgot.html'


class AdDetailsView(TemplateView):
    template_name = 'frontend/ad-details1.html'


class LoginView(TemplateView):
    template_name = 'frontend/login-2.html'


class UnderConstructionView(TemplateView):
    template_name = 'frontend/underconstruction.html'


class UserProfileView(TemplateView):
    template_name = 'frontend/userprofile.html'


class UserDashBoardView(TemplateView):
    template_name = 'frontend/mydash.html'


class UserAdsView(TemplateView):
    template_name = 'frontend/myads.html'


class AboutView(TemplateView):
    template_name = 'frontend/about.html'


class UserEditProfile(TemplateView):
    template_name = 'frontend/user-Edit-Profile.html'


def Register(request):
    title = " Register "
    all_user = User.objects.all();

    return render(request, 'frontend/register.html', {
        'title': title, 'all_user': all_user
    })


def register_user(request):

    email       = request.POST['email']
    user_name   = request.POST['username']
    password    = request.POST['password1']
    re_password = request.POST['password2']

    agent_code  = uuid.uuid4().hex[:6].upper()

    check_user  = User.objects.filter(email= email)|User.objects.filter(username= user_name)

    if check_user:
        messages.warning(request,'UserName or Email Already exist !!')
        return redirect('/register/')

    if password != re_password:
        messages.warning(request,'Password Doesn`t match !!')
        return redirect('/register/')
    users = User()

    users.first_name    = request.POST['first_name'];
    # users.last_name     = request.POST['last_name'];
    users.email         = request.POST['email'];
    users.username      = request.POST['username'];
    users.password      = make_password(request.POST['password1']);
    users.is_staff      = True;

    users.save()

    user_ingo_id = User.objects.order_by('-id').first()

    # user_info = UserInfo()

    reg_user_id = user_ingo_id.id;
    phone     = request.POST['phone'];
    address   = request.POST['address'];
    city      = request.POST['city'];
    post_code = request.POST['postal_code'];
    country   = request.POST['country'];
    refference_by = request.POST['refference'];
    role      = request.POST['role'];
    try:
        image     = request.FILES['image'];
        check     = 1
    except MultiValueDictKeyError:
        check     = 0

    if refference_by:
        refference = request.POST['refference'];
    else:
        refference = 0;

    if check>0:

        userInfo = UserInfo(reg_user_id = reg_user_id,
                        phone           = phone,
                        address         = address,
                        city            = city,
                        agent_code      = agent_code,
                        post_code       = post_code,
                        country         = country,
                        image           = image,
                        refference_by   = refference,
                        role            = Role(role))
        userInfo.save()
        messages.success(request,'User Registered Successfully !!')
    else:
        userInfo = UserInfo(reg_user_id = reg_user_id,
                        phone           = phone,
                        address         = address,
                        city            = city,
                        agent_code      = agent_code,
                        post_code       = post_code,
                        country         = country,
                        refference_by   = refference,
                        role            = Role(role))
        userInfo.save()

    subject = "Jams Property Registration."
    msg     = "Congratulations! You have registered successfully. Your Agent Code is : "+ agent_code
    to      = request.POST['email']
    res     = send_mail(subject,msg,settings.EMAIL_HOST_USER, [to])

    messages.success(request,'User Registered Successfully !!')
    return redirect('/dashboard/')

def up_pass(request):
    title = "change Password"

    auth_id             = request.POST['id'];
    old_password        = request.POST['old_password'];
    new_password        = request.POST['new_password'];
    re_type_password    = request.POST['re_type_password'];

    check_user = User.objects.filter(id=auth_id).first()


    if check_password(old_password, check_user.password):

        if new_password == new_password:

            update_user = User.objects.get(id=auth_id)
            update_user.password  = make_password(request.POST['new_password'])

            update_user.save()

            subject = "Password Changed."
            msg     = "Congratulations! You have changed password successfully! Your new password is :"+ new_password +". Thank you "
            to      = check_user.email
            res     = send_mail(subject,msg,settings.EMAIL_HOST_USER, [to])

            messages.success(request,'Password changed Successfully !!')
            logout(request)
            return redirect('home')
        else:
            messages.error(request,'password doesn`t match !!')
            return redirect('/dashboard/')
    else:
        messages.error(request,'Old password doesn`t match !!')
        return redirect('/dashboard/')

def index(request):
    return redirect('/admin/')


# Create your views here.




@login_required(login_url='/admin/login/')
# def admin(request):

#     if request.user.is_authenticated:
#         return HttpResponse ("I am in Admin Panel")
#     else:
#         return redirect('/admin/')

def dashboard(request):
    title = " Home "
    if request.user.is_authenticated:
        current_user = request.user

        # user_details = UserInfo.objects.filter(reg_user_id=current_user.id);
        user_details        = UserInfo.objects.filter(reg_user_id=request.user.id).first();
        posted_properties   = Property.objects.filter(Posted_by=request.user.id).all();
        my_approvals= Property.objects.filter(Posted_by=request.user.id,Status='1').all();
        my_pandings = Property.objects.filter(Posted_by=request.user.id,Status='0').all();
        my_soldout  = Property.objects.filter(Posted_by=request.user.id,Status='2').all();

        count_posted_properties = posted_properties.count()
        count_my_approvals      = my_approvals.count()
        count_my_pandings       = my_pandings.count()
        count_my_soldout        = my_soldout.count()

        return render(request, 'frontend/mydash.html', {'title': title,
                                                        'current_user': current_user,
                                                        'user_details': user_details,
                                                        'posted_properties':posted_properties,
                                                        'my_approvals':my_approvals,
                                                        'my_pandings':my_pandings,
                                                        'count_posted_properties':count_posted_properties,
                                                        'count_my_approvals':count_my_approvals,
                                                        'count_my_pandings':count_my_pandings,
                                                        'my_soldout':my_soldout,
                                                        'count_my_soldout':count_my_soldout,
                                                        })
    else:
        return redirect('/dashboard/')


def update_profile(request):

    auth_id = request.POST['auth_id']
    user_id = request.POST['id']

    update_user = User.objects.get(id=auth_id)

    if user_id:
        update_user_info        = UserInfo.objects.get(id=user_id)

        update_user.first_name  = request.POST['first_name']
        update_user.last_name   = request.POST['last_name']
        update_user.email       = request.POST['email']

        update_user.save()

        update_user_info.phone      = request.POST['phone']
        update_user_info.address    = request.POST['address']
        update_user_info.city       = request.POST['city']
        update_user_info.post_code  = request.POST['p_code']
        update_user_info.country    = request.POST['country']

        try:

            update_user_info.image = request.FILES['image']
            update_user_info.save()
        except MultiValueDictKeyError:
            update_user_info.save()

        messages.success(request,'User Profile Updated Done  Successfully !!')
    else:

        update_user.first_name  = request.POST['first_name']
        update_user.last_name   = request.POST['last_name']
        update_user.email       = request.POST['email']

        update_user.save()
        phone   = request.POST['phone'];
        address = request.POST['address'];
        city    = request.POST['city'];
        country = request.POST['country'];
        image   = request.FILES['image'];
        po_code = request.POST['p_code']

        userInfo = UserInfo(reg_user_id  = request.user.id,
                            phone        = phone,
                            address      = address,
                            city         = city,
                            post_code    = po_code,
                            country      = country,
                            image        = image,
                            role         = Role(1))
        userInfo.save()
        messages.success(request,'User Profile Updated Done  Successfully !!')

    return redirect('/dashboard/')

def edit_property(request,id):

    title               = 'Edit Property'
    units               = Unit.objects.all()
    cities              = City.objects.all()
    property_tags_types = PropertyTagsType.objects.all()
    purposes            = Purpose_id
    Condition           = condition
    property_type       = Property_type_id
    facing              = Facing.objects.all()
    all_facility        = Facilities.objects.all()
    pro_cat             = Category.objects.all()
    terms_conditions    = TermsCondition.objects.all()
    safty_tips          = SafetyTips.objects.all()
    benifits            = Benefits.objects.all()

    get_property        = Property.objects.filter(Property_code=id).first()

    get_images          = PropertyImage.objects.filter(Property_id_id=get_property.id).all()
    get_facility        = facilities.objects.filter(Property_id=get_property.id).all()

    checked_facilities  = facilities.objects.filter(Property_id=get_property.id).values('ficilities_id').all()
    unchack_facilities  = Facilities.objects.exclude(id__in=checked_facilities).all()

    get_tags            = Tags.objects.filter(Property_id=get_property.id).all()
    checked_tags        = Tags.objects.filter(Property_id=get_property.id).values('tags').all()
    unchecked_tags      = PropertyTag.objects.exclude(id__in=checked_tags).filter(property_tag_type=get_property.Property_tag_type_id).all()

    areas               = Area.objects.filter(city_id=get_property.City).all()


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
            'Condition': Condition,
            'cities': cities,
            'areas': areas,
            'property_tags_types': property_tags_types,
            'property_type': property_type,
            'facing': facing,
            'all_facility':all_facility,
            'pro_cat':pro_cat,
            'get_tags':get_tags,
            'unchecked_tags':unchecked_tags,
            }

    return render(request, "frontend/edit_property.html", args)

def Contact(request):
    title = "Contact Us"
    contacts_info = ContactUs.objects.first()

    current_user = request.user
    return render(request, 'frontend/contact.html', {
        'title': title, 'contacts_info': contacts_info, 'current_user': current_user
    })


def legal_support(request):
    title = "Legal Support"

    get_about = LegalSupport.objects.first()
    return render(request,'frontend/legal_support.html',{
            'title':title,
            'get_about':get_about,
        })

def financial_support(request):
    title = "Financial Support"

    get_about = FinencialSupport.objects.first()
    return render(request,'frontend/financial_support.html',{
            'title':title,
            'get_about':get_about,
        })

def terms_conditions(request):
    title = "Terms & Condition"
    get_terms = TermsCondition.objects.all()
    return render(request,'frontend/terms_conditions.html',{
            'title':title,
            'get_terms':get_terms,
        })

def about(request):
    title = "About Us"
    get_about = AboutUs.objects.first()
    return render(request,'frontend/about.html',{
            'title':title,
            'get_about':get_about,
        })

def all_locations(request):

    get_location = Property.objects.values('location').all().distinct()
    data = list(get_location)

    return JsonResponse(data, safe=False )

def forgate_password(request):
    title = "Forgate Password"

    return render(request,'frontend/forgot.html',{
            'title':title,
        })
    # return render(request,'registration/password_reset_form.html',{
    #         'title':title,
    #     })

def passReset(request):

    return redirect('/')

@login_required(login_url='/admin/login/')

def check_wish_list(request,id):
    current_user = request.user.id
    property_id = id

    wishes = Wishes(
                user     = User(current_user),
                property = Property(property_id)
            )

    wishes.save()

    messages.success(request,'wished successfully !')

    return HttpResponseRedirect('/ADDetails/'+str(property_id))

def remove_wish(request,id):
    current_user = request.user.id

    del_wish = Wishes.objects.filter(property_id=id,user_id = current_user).delete()

    messages.success(request,'wish removed successfully !')
    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))


