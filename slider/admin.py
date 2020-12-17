from django.contrib import admin
from .models import Slider

# Register your models here.

# def Accepted(modeladmin,request, queryset):
# 	queryset.update(title="test")

# class SliderAdmin(admin.ModelAdmin):
# 	list_display = ['title','sub_title']
# 	actions = [Accepted,]

# admin.site.register(Slider,SliderAdmin)

class SliderAdmin(admin.ModelAdmin):
	list_display = ['slider_image','title',]
	list_display_links = ['slider_image','title',]
	readonly_fields = ('slider_image',)
	icon_name = 'wallpaper'
	def has_add_permission(self, request, obj=None):
		get_slider = Slider.objects.first()
		if get_slider:
			return False
		else:
			return True
admin.site.register(Slider,SliderAdmin)

