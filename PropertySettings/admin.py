from django.contrib import admin
from .models import Category,Facilities,Unit,PropertyTagsType,PropertyTag,Facing,Specification

# Register your models here.
class categorySearch(admin.ModelAdmin):
    search_fields = ('cat_name',)

class facilitySearch(admin.ModelAdmin):
    search_fields = ('facilitie_name',)
    icon_name = 'list_alt'

class unitSearch(admin.ModelAdmin):
    search_fields = ('unit_name',)
    icon_name = 'view_quilt'

class tagTypeSearch(admin.ModelAdmin):
    search_fields = ('type_name',)
    icon_name = 'art_track'

class tagSearch(admin.ModelAdmin):
    search_fields = ('tag_name',)
    icon_name = 'library_books'

class faceSearch(admin.ModelAdmin):
    search_fields = ('facing_name',)
    icon_name = 'hearing'

class specificationSearch(admin.ModelAdmin):
    search_fields = ('specification_name',)
    icon_name = 'playlist_add'

# admin.site.register(Category,categorySearch)
admin.site.register(Facilities,facilitySearch)
admin.site.register(Unit,unitSearch)
admin.site.register(PropertyTagsType,tagTypeSearch)
admin.site.register(PropertyTag,tagSearch)
admin.site.register(Facing,faceSearch)
# admin.site.register(Specification,specificationSearch)
