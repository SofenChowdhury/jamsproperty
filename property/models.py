from django.db import models
from location.models import City, Area
from django.utils.timezone import now
from PropertySettings.models import Category, Facilities, Unit, PropertyTagsType, Facing, PropertyTag, Specification
from django.contrib.auth.models import User
from django.utils.safestring import mark_safe
from django.urls import reverse
import uuid

# Create your models here.
# PropertyTagsType = [
#     ('1', 'Residential'),
#     ('2', 'Commercial'),
# ]
Purpose_id = (
    ('1', 'Buy'),
    ('2', 'Rent'),
    ('3', 'Sale'),
)
Property_type_id = (
    ('1', 'Normal'),
    ('2', 'Featured')
)
status = (
    ('0', 'Pending'),
    ('1', 'Approved')
)
condition = (
    ('New', 'New'),
    ('Old', 'Old')
)

# Property Post
class Property(models.Model):

    Property_title      = models.CharField(max_length=200, verbose_name='Property Title', blank=True)
    Price               = models.FloatField(blank=True)
    Size                = models.FloatField(blank=True)
    Property_lebel      = models.CharField(max_length=20,default='Null', blank=True)
    totalFloor          = models.CharField(max_length=20,default='Null', blank=True)
    Property_code       = models.CharField(max_length=20, blank=True, unique=True, default=uuid.uuid4)
    # Category            = models.ForeignKey(Category,on_delete=models.CASCADE, verbose_name='Category',max_length=20,blank=True)
    Unit                = models.ForeignKey(Unit, on_delete=models.CASCADE, verbose_name='Unit Name', blank=True)
    Facing              = models.ForeignKey(Facing, on_delete=models.CASCADE,default=0, blank=True)
    Purpose             = models.CharField(max_length=20, choices=Purpose_id,default=0, blank=True)
    Property_type       = models.CharField(max_length=20, choices=Property_type_id,default=0, blank=True)
    Property_tag_type   = models.ForeignKey(PropertyTagsType,on_delete=models.CASCADE,max_length=20,default=3,blank=True)
    Bed                 = models.IntegerField(default=0,blank=True)
    Bath                = models.IntegerField(default=0,blank=True)
    Belcony             = models.IntegerField(default=0,blank=True)
    Car_parking         = models.IntegerField(default=0,blank=True)
    City                = models.ForeignKey(City, on_delete=models.CASCADE, related_name='city', blank=True)
    Area                = models.ForeignKey(Area, on_delete=models.CASCADE, blank=True)
    Road_no             = models.CharField(max_length=255, blank=True, null=True)
    Holding_no          = models.CharField(max_length=255, blank=True, null=True)
    location            = models.CharField(max_length=255, blank=True)
    Status              = models.CharField(blank=True,choices=status,max_length=20, default=0)
    Condition           = models.CharField(blank=True,choices=condition,max_length=20, default='New')
    Posted_by           = models.ForeignKey(User, on_delete=models.CASCADE, blank=True)
    Posted_time         = models.DateTimeField(blank=True)
    Description         = models.TextField(blank=True)
    Thumbnail           = models.ImageField(upload_to='assets/uploads/property/thumbnail', blank=True)

    def __str__(self):
        return self.Property_title
    class Meta:
	    verbose_name_plural="Properties"
    def property_thumb(self):
        return mark_safe('<img src="/{}" width="70" height="70"/>'.format(self.Thumbnail.url))
        property_thumb.short_description = 'Thumbnail'
        property_thumb.allow_tages = True

    def get_absolute_url(self):
        return reverse('website:UserProfile', kwargs={'pk': self.pk})

# Every Property Multiple Specifications
class Specification(models.Model):
    Property        = models.ForeignKey(Property, on_delete=models.CASCADE)
    Specification   = models.ForeignKey(Specification, on_delete=models.CASCADE)

    def __str__(self):
        return self.Property.Property_title

# User will Rated by user
class Ratings(models.Model):
    Property        = models.ForeignKey(Property, on_delete=models.CASCADE)
    Ratiings        = models.IntegerField(blank=True, default=0)

    def __str__(self):
        return self.Property.Property_title

# Multiple Images will be posted from Properety Post
class PropertyImage(models.Model):
    Property_id = models.ForeignKey(Property, on_delete=models.CASCADE)
    Image       = models.ImageField(upload_to='assets/uploads/property', blank=False)

    def __str__(self):
        return self.Property_id.Property_title
    def property_image(self):
        return mark_safe('<img src="/{}" width="70" height="70"/>'.format(self.Image.url))
        property_image.short_description = 'Image'
        property_image.allow_tages = True

# Single Video will posted From Property Post
class PropertyVideo(models.Model):
    Property_id     = models.ForeignKey(Property, on_delete=models.CASCADE)
    property_video  = models.FileField(upload_to='assets/uploads/property/videos', blank=True, verbose_name='Property Video')

    def __str__(self):
        return self.Property_id.Property_title
    def pro_video(self):
        return mark_safe('<video controls class="img-responsive" style="width:300px;"><source src="/{}" type="video/mp4"></video>'.format(self.property_video.url))
        property_image.short_description = 'property_video'
        property_image.allow_tages = True

class facilities(models.Model):
    Property     = models.ForeignKey(Property, on_delete=models.CASCADE)
    ficilities   = models.ForeignKey(Facilities, on_delete=models.CASCADE)

    def __str__(self):
        return self.Property_id.Property_title
class Tags(models.Model):
    Property    = models.ForeignKey(Property, on_delete=models.CASCADE)
    tags        = models.ForeignKey(PropertyTag, on_delete=models.CASCADE)

    def __str__(self):
        return self.Property.Property_title