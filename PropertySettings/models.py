from django.db import models
# from django.urls import reverse

# Create your models here.

class Category(models.Model):
    cat_name 	= models.CharField(max_length=200)
    icon 		= models.ImageField(upload_to='assets/uploads/category')

    def __str__(self):
        return self.cat_name

    class Meta:
        verbose_name_plural = "Categories"


class Facilities(models.Model):
    facilitie_name = models.CharField(max_length=200)

    def __str__(self):
        return self.facilitie_name

    class Meta:
        verbose_name_plural = "Facilities"

class Unit(models.Model):
    unit_name = models.CharField(max_length=100)

    def __str__(self):
        return self.unit_name

class PropertyTagsType(models.Model):
    type_name = models.CharField(max_length=100)
    icon 	  = models.ImageField(upload_to='assets/uploads/propertyTag')
    def __str__(self):
        return self.type_name

class PropertyTag(models.Model):

    property_tag_type 	= models.ForeignKey(PropertyTagsType,on_delete=models.CASCADE, verbose_name='Tag Type',max_length=20)
    tag_name 			= models.CharField(max_length=100)

    def __str__(self):
        return self.tag_name

class Facing(models.Model):

    facing_name = models.CharField(max_length=100)

    def __str__(self):
        return self.facing_name

class Specification(models.Model):

    specification_name = models.CharField(max_length=100)

    def __str__(self):
        return self.specification_name
