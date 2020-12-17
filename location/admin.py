from django.contrib import admin
from .models import City,Area
# Register your models here.

class citySearch(admin.ModelAdmin):
    search_fields = ('city_name',)
    icon_name = 'business'

class areaSearch(admin.ModelAdmin):
    search_fields = ('area_name',)
    icon_name = 'format_shapes'

admin.site.register(City,citySearch)
admin.site.register(Area,areaSearch)
