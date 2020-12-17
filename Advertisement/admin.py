from django.contrib import admin
from .models import Advertisement
# Register your models here.
def Accept(modeladmin,request, queryset):
	queryset.update(status=1)

def Pending(modeladmin,request, queryset):
	queryset.update(status=2)

class adSearch(admin.ModelAdmin):

	search_fields = ('ad_title','company','ad_placement',)
	list_display = ['ad_title','company','ad_placement','status']
	icon_name = 'assignment'
	actions = [Accept,Pending]

admin.site.register(Advertisement,adSearch)