from django.db import models

# Create your models here.

class Testimonial(models.Model):

	author 		= models.CharField(max_length=100)
	designation	= models.CharField(max_length=200)
	image 		= models.ImageField(upload_to='assets/uploads/sliders',default='')
	message		= models.TextField()

	def __str__(self):
		return self.author
