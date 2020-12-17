from django.db import models

# Create your models here.
class City(models.Model):

	city_name 	= models.CharField(max_length=200)

	def __str__(self):
		return self.city_name

	class Meta:
	    verbose_name_plural="Cities"

class Area(models.Model):
	city_id		= models.ForeignKey(City, on_delete=models.CASCADE)
	area_name 	= models.CharField(max_length=200)

	def __str__(self):
		return self.area_name

