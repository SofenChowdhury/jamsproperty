from django.db import models
from property.models import Property
from django.contrib.auth.models import User
# Create your models here.
class Wishes(models.Model):

    user        = models.ForeignKey(User, on_delete=models.CASCADE, blank=True)
    property    = models.ForeignKey(Property, on_delete=models.CASCADE, blank=True)

    def __str__(self):
        return self.user.username
    class Meta:
	    verbose_name_plural="Wish list"
