from django.shortcuts import render
from location import models
from django.shortcuts import redirect
from django.http import HttpResponse
from django.http import JsonResponse
from master.models import Master,Role,TermsCondition,SafetyTips,Benefits
from .models import Unit,Tags,facilities, Property, Purpose_id,Property_type_id, Specification,PropertyImage, PropertyVideo,condition
from PropertySettings.models import Category, Facilities, Unit, PropertyTagsType, Facing, PropertyTag, Specification
from location.models import City, Area
from django.core import serializers
from django.contrib.auth.models import User, auth
import datetime
from Notification.models import Notification as My_Notification
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.utils.datastructures import MultiValueDictKeyError

@login_required(login_url='/admin/login/')
def property_create_view(request):
    title           = "Post Property"
    units           = Unit.objects.all()
    cities          = models.City.objects.all()
    areas           = models.Area.objects.all()
    property_tags_types = PropertyTagsType.objects.all()
    purposes        = Purpose_id
    property_type   = Property_type_id
    Condition       = condition
    facing          = Facing.objects.all()
    facilities      = Facilities.objects.all()
    pro_cat         = Category.objects.all()
    terms_conditions= TermsCondition.objects.all()
    safty_tips      = SafetyTips.objects.all()
    benifits        = Benefits.objects.all()

    args = {'terms_conditions':terms_conditions,'safty_tips':safty_tips,'benifits':benifits,'units': units, 'purposes': purposes, 'cities': cities, 'areas': areas,
            'property_tags_types': property_tags_types, 'property_type': property_type, 'facing': facing, 'facilities':facilities, 'pro_cat':pro_cat,'title':title,'Condition':Condition}

    return render(request, "frontend/ad-posts.html", args)

def get_item_tags(request,id):

    get_tag = PropertyTag.objects.filter(property_tag_type_id=id).all().values('id','tag_name')
    data = list(get_tag)

    return JsonResponse(data, safe=False)

def get_location(request,id):

    get_location = Area.objects.filter(city_id_id=id).all().values('id','area_name')
    data = list(get_location)

    return JsonResponse(data, safe=False)

def add_property_form_submission(request):
    if request.method == 'POST':

        title       = request.POST["title"]

        Thumbnail   = request.FILES['images']
        # Thumbnail   = request.FILES["Thumbnail"]
        type        = 1
        # pro_cat     = request.POST["pro_cat"]
        type_of_ad  = request.POST.get("type_of_ad")
        price       = request.POST["price"]
        Property_lebel  = request.POST["Property_lebel"]
        totalFloor  = request.POST["totalFloor"]
        condition   = request.POST["condition"]
        size        = request.POST["size"]
        unit        = request.POST["unit"]
        bed         = request.POST["bed"]
        bath        = request.POST["bath"]
        Belcony     = request.POST["Belcony"]
        Car_parking = request.POST["Car_parking"]
        facing      = request.POST['facing']
        purposes    = request.POST['type_of_ad']
        tag_type    = request.POST['tag_type']

        city        = request.POST['city']
        area        = request.POST['area']
        Road_no     = request.POST['Road_no']
        Holding_no  = request.POST['Holding_no']
        address     = request.POST['address']
        description = request.POST['description']
        posted_by   = request.user.id
        posted_time = datetime.datetime.now()
        status      = 0

        tag_names   = request.POST.getlist('tag_name')
        property_facilities  = request.POST.getlist('facilitie')
        images      = request.FILES.getlist('images')
        videos      = request.FILES.getlist('videos')

        property = Property(Property_title  = title,
                            Thumbnail       = Thumbnail,
                            Price           = price,
                            Size            = size,
                            Property_lebel  = Property_lebel,
                            totalFloor      = totalFloor,
                            # Category        = Category(pro_cat),
                            Unit            = Unit(unit),
                            Facing          = Facing(facing),
                            Purpose         = purposes,
                            Property_type   = type,
                            Property_tag_type= PropertyTagsType(tag_type),
                            Bed             = bed,
                            Bath            = bath,
                            Belcony         = Belcony,
                            Car_parking     = Car_parking,
                            City            = City(city),
                            Area            = Area(area),
                            Road_no         = Road_no,
                            Holding_no      = Holding_no,
                            location        = address,
                            Status          = 0,
                            Condition       = condition,
                            Posted_by       = User(posted_by),
                            Posted_time     = posted_time,
                            Description     = description)

        property.save()
        send_notification = My_Notification(
                                notify_to       = User(posted_by),
                                notify_for      = Property(property.id),
                                notify_time     = posted_time,
                                notify_message  = 'Thank You for Posting your Property! Your Property is in under Review.',
                            )

        send_notification.save()
        if tag_names:
            for tag_name in tag_names:
                proprty_tag = Tags(Property=Property(property.id), tags_id=tag_name)
                proprty_tag.save()

        if property_facilities:
            for property_facilitie in property_facilities:
                pro_facilities = facilities(Property=Property(property.id), ficilities_id=property_facilitie)
                pro_facilities.save()

        if images:
            for image in images:
                proprty_image = PropertyImage(Property_id=Property(property.id), Image=image)
                proprty_image.save()

        for video in videos:
            proprty_video = PropertyVideo(Property_id=Property(property.id), property_video=video)
            proprty_video.save()

        # specification = Specification(Property_id=Property(property.id), Bed_Rooms=bed, Bath_Rooms=bath,
        #                               Kitchen=kitchen,
        #                               Lift=lift, Facing=facing, Car_Parking=car_parking, Furnishing=furnishing,
        #                               SwimmingPool=swimming_pool, Security=security, Garden=garden)
        # specification.save()

        messages.success(request,'Property Posted Successfully !!')

        return redirect('/dashboard/')
        # return render(request, "frontend/home.html")



def edit_property_form_submission(request):
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
    update_property.Road_no         = request.POST['Road_no']
    update_property.Holding_no      = request.POST['Holding_no']
    update_property.location        = request.POST['address']
    update_property.Status          = 0
    update_property.Posted_time     = datetime.datetime.now()
    update_property.Description     = request.POST['description']

    try:
        update_property.Thumbnail   = request.FILES['Thumbnail']
        update_property.save()
    except MultiValueDictKeyError:
        update_property.save()

    if tag_names:
        update_tags.delete()

    if property_facilities:
        update_fecility.delete()

    if images:
        update_image.delete()

    if videos:
        update_video.delete()

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

    return redirect('/dashboard/')