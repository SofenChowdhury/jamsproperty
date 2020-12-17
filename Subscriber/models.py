from django.db import models

# Create your models here.
class Subscriber(models.Model):

	email 	= models.CharField(max_length=200,unique=True)
	ip 		= models.CharField(max_length=15)

	def __str__(self):
		return self.email