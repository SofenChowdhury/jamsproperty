from django.contrib import admin
from .models import Role,TermsCondition,SafetyTips,Benefits

# Register your models here.

class MaterialRoleAdmin(admin.ModelAdmin):
    icon_name = 'vertical_split'

class MaterialTermsConditionAdmin(admin.ModelAdmin):
    icon_name = 'contact_support'

class MaterialSafetyTipsAdmin(admin.ModelAdmin):
    icon_name = 'security'

class MaterialBenefitsAdmin(admin.ModelAdmin):
    icon_name = 'group_work'

# admin.site.register(Master)
admin.site.register(Role,MaterialRoleAdmin)
admin.site.register(TermsCondition,MaterialTermsConditionAdmin)
admin.site.register(SafetyTips,MaterialSafetyTipsAdmin)
admin.site.register(Benefits,MaterialBenefitsAdmin)

