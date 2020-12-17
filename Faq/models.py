from django.db import models

# Create your models here.
class Faq(models.Model):

	title 		= models.CharField(max_length=200, blank=True)
	description = models.TextField(blank=True)

	def __str__(self):
		return self.title


