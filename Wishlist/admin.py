from django.contrib import admin
from .models import Wishes

# Register your models here.

class wishSearch(admin.ModelAdmin):
    list_display = ['user','property',]
    list_display_links = ['user','property',]
    search_fields = ('user__username','property__Property_title',)
    icon_name = 'favorite_border'

admin.site.register(Wishes,wishSearch)