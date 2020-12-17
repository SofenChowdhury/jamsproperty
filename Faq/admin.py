from django.contrib import admin
from .models import Faq

# Register your models here.
class faqSearch(admin.ModelAdmin):
	search_fields = ('title',)

# admin.site.register(Faq,faqSearch)