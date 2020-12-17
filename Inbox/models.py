from django.db import models
from django.contrib.auth.models import User
from datetime import datetime
# Create your models here.
status = (
    ('1', 'send To Trash'),
    ('2', 'Important'),
    ('3', 'Delete'),
)
class Inbox(models.Model):

	parent_id   = models.IntegerField(blank=True,null=True)
	sender_email= models.EmailField(max_length=200,blank=True)
	send_to 	= models.EmailField(max_length=200,blank=True)
	phone 		= models.CharField(max_length=20,blank=True)
	subject 	= models.CharField(max_length=200,blank=True)
	message 	= models.TextField()
	status      = models.CharField(max_length=20,choices=status,default=0, blank=True)
	sendTime 	= models.DateTimeField(blank=True,default=datetime.now)
	seenTime 	= models.DateTimeField(blank=True,null=True)

	def __str__(self):
		return self.sender_email
