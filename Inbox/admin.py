from django.contrib import admin
from .models import Inbox

# Register your models here.
class inboxSearch(admin.ModelAdmin):
	search_fields = ('sender_email','send_to',)
	list_display  = ['sender_email','send_to']

# admin.site.register(Inbox,inboxSearch)
