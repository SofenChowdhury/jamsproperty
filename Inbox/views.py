from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import redirect
from django.http import HttpResponseRedirect
from .models import Inbox
from django.contrib import messages
from jamsproperty import settings
from django.core.mail import send_mail
# Create your views here.

def send_message(request):

    subject = request.POST['subject']

    msg         = 'Hello jamsproperty, i am '+request.POST['email']+' My message is : '+request.POST['message']+ ' Please Call me  : ' + request.POST['phone']
    from_email  = settings.EMAIL_HOST_USER
    res         = send_mail(subject,msg,from_email, ['sales@jamsproperty.com'], fail_silently=False)

    inbox = Inbox()

    inbox.sender_email 	= request.POST['email']
    inbox.phone 	    = request.POST['phone']
    inbox.subject 	    = request.POST['subject']
    inbox.message 	    = 'Name: '+request.POST['name']+' , '+request.POST['message']
    inbox.send_to 	    = 'sales@jamsproperty.com'

    inbox.save()
    messages.success(request,'Message Sent Successfully !!')

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
