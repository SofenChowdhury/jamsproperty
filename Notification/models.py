from django.db import models

# Create your models here.
from django.contrib.auth.models import User
from property.models import Property
from datetime import datetime

# Create your models here.
class Notification(models.Model):
    notify_to 		= models.ForeignKey(User,on_delete=models.CASCADE, verbose_name='Notify To',max_length=20,blank=True)
    notify_for 		= models.ForeignKey(Property,on_delete=models.CASCADE, verbose_name='Property',max_length=20,blank=True)
    notify_time 	= models.DateTimeField(blank=True,default=datetime.now)
    seen_at			= models.DateTimeField(blank=True, null=True)
    notify_message 	= models.TextField()

    def __str__(self):
        return self.notify_for.Property_title

    class Meta:
    	verbose_name_plural = "Notification"
