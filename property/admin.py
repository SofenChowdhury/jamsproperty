from django.contrib import admin
from .models import Property, PropertyImage, PropertyVideo, Tags
# Register your models here.

def Accept(modeladmin,request, queryset):
	queryset.update(Status='1')

def Pending(modeladmin,request, queryset):
	queryset.update(Status='0')
def Delete(modeladmin,request, queryset):
	queryset.delete()



class PropertyAdmin(admin.ModelAdmin):
    list_display = ['id','property_thumb','Property_title','Price','Purpose','Status','Posted_by']
    list_display_links = ['id','property_thumb','Property_title',]
    readonly_fields = ('property_thumb',)
    search_fields = ('Property_title','Price','Purpose','Status','Posted_by__username',)
    actions = [Accept,Pending,Delete,]
    def has_delete_permission(self, request, obj=None):
        return False

class propertyImages(admin.ModelAdmin):
    list_display_links = ['Property_id']
    list_display = ['property_image','Property_id']
    readonly_fields = ('property_image',)

class propertyVideo(admin.ModelAdmin):
    list_display_links = ['Property_id']
    list_display = ['Property_id','pro_video']
    readonly_fields = ('pro_video',)

class propertyTags(admin.ModelAdmin):
    list_display = ['Property','tags',]

# admin.site.register(Property,PropertyAdmin)

# admin.site.register(Property)
# admin.site.register(PropertyImage,propertyImages)
# admin.site.register(PropertyVideo,propertyVideo)
# admin.site.register(Tags,propertyTags)