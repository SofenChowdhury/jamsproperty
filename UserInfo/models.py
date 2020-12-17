from django.db import models
from django.contrib.auth.models import User
from master.models import Role
# Create your models here.
class UserInfo(models.Model):

	reg_user 		= models.ForeignKey(User,on_delete=models.CASCADE)
	phone 			= models.CharField(max_length=15)
	address 		= models.TextField(blank=True, null=True)
	city 			= models.CharField(max_length=200,blank=True)
	post_code 		= models.CharField(max_length=20,blank=True, null=True)
	country 		= models.CharField(max_length=100,blank=True, null=True)
	image 			= models.ImageField(upload_to='assets/uploads/user',blank=True, null=True)
	refference_by 	= models.CharField(max_length=20,default="Null", blank=True, null=True)
	role            = models.ForeignKey(Role,on_delete=models.CASCADE, blank=True)
	agent_code 		= models.CharField(max_length=100,blank=True)

	def __str__(self):
		return self.reg_user.username


