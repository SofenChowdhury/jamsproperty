from django.contrib import admin
from .models import AboutUs,LegalSupport,FinencialSupport,ContactUs,Faq,Testimonial,CompanyVideo
# from master.models import Master

class contactAdmin(admin.ModelAdmin):
	list_display = ['company_logo','title','email']
	list_display_links = ['company_logo','title']
	readonly_fields = ('company_logo',)
	icon_name = 'contact_phone'
	def has_add_permission(self, request, obj=None):
		get_contact = ContactUs.objects.first()
		if get_contact:
			return False
		else:
			return True

class MaterialAboutAdmin(admin.ModelAdmin):
    icon_name = 'receipt'

class MaterialFaqAdmin(admin.ModelAdmin):
    icon_name = 'redeem'

class MaterialTestimonialAdmin(admin.ModelAdmin):
    icon_name = 'record_voice_over'

class MaterialLegalSupportAdmin(admin.ModelAdmin):
    icon_name = 'gavel'

class MaterialFinencialSupportAdmin(admin.ModelAdmin):
    icon_name = 'monetization_on'

def Active(modeladmin,request, queryset):
	queryset.update(status='1')

def Pending(modeladmin,request, queryset):
	queryset.update(status='0')

class MaterialCompanyVideo(admin.ModelAdmin):
    icon_name = 'videocam'
    list_display_links = ['title','image']
    list_display = ['title','image','com_video','status']
    actions = [Active,Pending,]


# Register your models here.
admin.site.register(ContactUs,contactAdmin)
admin.site.register(Faq,MaterialFaqAdmin)
admin.site.register(Testimonial,MaterialTestimonialAdmin)
admin.site.register(AboutUs,MaterialAboutAdmin)
admin.site.register(LegalSupport,MaterialLegalSupportAdmin)
admin.site.register(FinencialSupport,MaterialFinencialSupportAdmin)
admin.site.register(CompanyVideo,MaterialCompanyVideo)
