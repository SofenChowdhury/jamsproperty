from django.db import models

# Create your models here.

ad_placement_id = (
    (1, 'Property list-Right'),
    (2, 'Property list-Bottom'),
    (3, 'Property Details-Right'),
    (4, 'About-Bottom'),
    (5, 'Homepage'),
    (6, 'Property Search-Right'),
    (7, 'Property Search-Bottom'),
    (8, 'Homepage Poopup'),
)
status = (
    (1, 'Active'),
    (2, 'Pending'),
)

class Advertisement(models.Model):
    ad_title 	= models.CharField(max_length=200)
    company 	= models.CharField(max_length=200)
    ad_image 	= models.ImageField(upload_to='assets/uploads/advertisement')
    ad_placement= models.IntegerField(choices=ad_placement_id)
    status      = models.IntegerField(choices=status,default=2,blank=True)

    def __str__(self):
        return self.ad_title

    class Meta:
        verbose_name_plural = "Advertisement"