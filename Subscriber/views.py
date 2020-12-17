from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import redirect
from django.contrib.auth.models import User, auth
from .models import Subscriber
from Wishlist.models import Wishes
from property.models import Property
from jamsproperty import settings
from django.core.mail import send_mail
from django.contrib import messages
from django.http import HttpResponseRedirect
from django.contrib.auth.decorators import login_required
# from django.contrib.gis.utils import GeoIP
# Create your views here.

def subscribe_user(request):

    subject = "Jams Property subscribe."
    msg     = "Congratulations! You have subscribed us."
    to      = request.POST['email']

    check_mail = Subscriber.objects.filter(email= request.POST['email']).first()

    if check_mail:
        messages.warning(request,'You have already Subscrived !')
    else:
        res     = send_mail(subject,msg,settings.EMAIL_HOST_USER, [to])
        subscriber = Subscriber()

        subscriber.email = request.POST['email']
        subscriber.ip = request.META.get('REMOTE_ADDR')

        subscriber.save()
        messages.success(request,'You have already Subscrived !')

    return redirect('/')
@login_required(login_url='/admin/login/')
def wish_list(request,id):

    current_user = request.user.id
    property_id = id

    wishes = Wishes(
                user     = User(current_user),
                property = Property(property_id)
            )

    wishes.save()

    messages.success(request,'wished successfully !')

    return redirect('/AddList/')
    # return HttpResponseRedirect(request.META.get('HTTP_REFERER'))


def check_wishlist(request, id):
    current_user = request.user.id
    property_id = id

    check = Wishes.objects.filter(user_id = current_user, property_id = property_id).all().count()

    return HttpResponse(check)

# def get_user_location(request):
# 	g = GeoIP()
# 	ip = request.META.get('REMOTE_ADDR', None)
# 	if ip:
# 	    city = g.city(ip)['city']
# 	    return HttpResponse(city)
# 	else:
# 	    city = 'Rome' # default city
# 	    return HttpResponse(city)
