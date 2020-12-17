from django.contrib import admin
from .models import Subscriber

# Register your models here.

class subscriberSearch(admin.ModelAdmin):
	search_fields = ('email',)
	icon_name = 'touch_app'

admin.site.register(Subscriber,subscriberSearch)