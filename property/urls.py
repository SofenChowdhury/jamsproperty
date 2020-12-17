from django.urls import path
from . import views

app_name = 'property'
urlpatterns = [

    # path("addProperty/", views.AdPostView.as_view(), name='AdProperty'),
    path("addProperty/", views.property_create_view, name='AdProperty'),
    path("propertySubmission/", views.add_property_form_submission, name='add_property_form_submission'),
    path("Edit/propertySubmission/", views.edit_property_form_submission, name='edit_property_form_submission'),
    path("get_item_tags/<int:id>", views.get_item_tags, name='get_item_tags'),
    path("get_location/<int:id>", views.get_location, name='get_location'),

]
