from django.db import models
from django.utils.safestring import mark_safe
# Create your models here.

class Slider(models.Model):

	title 		= models.CharField(max_length=100)
	sub_title 	= models.CharField(max_length=200)
	image 		= models.ImageField(upload_to='assets/uploads/sliders',default='')

	def __str__(self):
		return self.title
	class Meta:
	    verbose_name_plural = "Slider"

	def slider_image(self):
		return mark_safe('<img src="/{}" width= "70" height= "50">'.format(self.image.url))
		slider_image.short_description = 'Slider Image'
		slider_image.allow_tages = True


