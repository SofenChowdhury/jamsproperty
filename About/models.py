from django.db import models
from django.utils.safestring import mark_safe
from django.urls import reverse
# from ckeditor.fields import RichTextField
# Create your models here.

status = (
    (0, 'Pending'),
    (1, 'Active')
)

class AboutUs(models.Model):
    title 		= models.CharField(max_length=200)
    sub_title 	= models.CharField(max_length=200)
    description = models.TextField()
    image		= models.ImageField(upload_to='assets/uploads/aboutus', blank=True)

    def __str__(self):
        return self.title

    class Meta:
    	verbose_name_plural = "About Us"

class ContactUs(models.Model):

	title 		= models.CharField(max_length=200, default='JamsProperty',blank=True)
	logo 		= models.ImageField(upload_to='assets/uploads/setup',blank=True)
	fb 			= models.CharField(max_length=200,blank=True)
	youtube		= models.CharField(max_length=200,blank=True)
	insta		= models.CharField(max_length=200,blank=True)
	phone		= models.CharField(max_length=200,blank=True)
	email		= models.EmailField(max_length=200,blank=True)
	address		= models.CharField(max_length=300,blank=True)
	city		= models.CharField(max_length=50,blank=True)
	country		= models.CharField(max_length=100,blank=True)
	start_time	= models.TimeField(default='10:00:00',blank=True)
	end_time	= models.TimeField(default='18:00:00',blank=True)

	def __str__(self):
		return self.title
	class Meta:
	    verbose_name_plural = "Contact Us"

	def company_logo(self):
	    return mark_safe('<img src="/{}" height="70"/>'.format(self.logo.url))
	    company_logo.short_description = 'Logo'
	    company_logo.allow_tages = True

class Faq(models.Model):

	title 		= models.CharField(max_length=200, blank=True)
	description = models.TextField(blank=True)

	def __str__(self):
		return self.title

	class Meta:
	    verbose_name_plural = "FAQs"
class Testimonial(models.Model):

	author 		= models.CharField(max_length=100)
	designation	= models.CharField(max_length=200)
	image 		= models.ImageField(upload_to='assets/uploads/sliders',default='')
	message		= models.TextField()

	def __str__(self):
		return self.author

class LegalSupport(models.Model):

    title 		= models.CharField(max_length=200)
    sub_title 	= models.CharField(max_length=200)
    description = models.TextField()
    image		= models.ImageField(upload_to='assets/uploads/legalSupport', blank=True)

    def __str__(self):
        return self.title

    class Meta:
    	verbose_name_plural = "Legal Support"

class FinencialSupport(models.Model):

    title 		= models.CharField(max_length=200)
    sub_title 	= models.CharField(max_length=200)
    description = models.TextField()
    image		= models.ImageField(upload_to='assets/uploads/finencialSupport', blank=True)

    def __str__(self):
        return self.title

    class Meta:
    	verbose_name_plural = "Financial Support"

class CompanyVideo(models.Model):

    title 		= models.CharField(max_length=200, blank=True, null = True)
    status 		= models.IntegerField(choices=status, default=0, blank=True, null = True)
    video_poster= models.ImageField(upload_to='assets/uploads/video/company',verbose_name='Image/Gifs', blank=True, null = True)
    video		= models.FileField(upload_to='assets/uploads/video/company',verbose_name='Video', blank=True, null = True)

    # def __str__(self):
    #     return self.title

    class Meta:
    	verbose_name_plural = "Content Uplode"

    def com_video(self):
        if self.video:
            return mark_safe('<video controls class="img-responsive" style="width:200px;"><source src="/{}" type="video/mp4" ></video>'.format(self.video.url))
        else:
            return mark_safe('<p style="text-align:center;font-size:20px; font-weight:bold;">No Video uploaded !</p>')
        com_video.short_description = 'video'
        com_video.allow_tages = True

    def image(self):
        if self.video_poster:
            return mark_safe('<img src="/{}" class="img-responsive" style="width:100px;">'.format(self.video_poster.url))
        else:
            return mark_safe('<img src="/{}" class="img-responsive" style="width:100px;">'.format(self.video.url))
        # return mark_safe('<img src="/{}" width="70" height="70"/>'.format(self.video_poster.url))
        image.short_description = 'Image/Gifs'
        image.allow_tages = True
