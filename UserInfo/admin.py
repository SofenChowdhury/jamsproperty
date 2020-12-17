from django.contrib import admin
from .models import UserInfo

# Register your models here.

class UserInfoAdmin(admin.ModelAdmin):
    list_display = ['reg_user','phone','city']
    search_fields = ['phone','reg_user__username',]
    icon_name = 'contacts'

admin.site.register(UserInfo,UserInfoAdmin)