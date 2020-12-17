from django.urls import path
from . import views

urlpatterns = [
    path("backend/", views.adminDashboard, name='backend'),
    path("backend/properties", views.Properties, name='properties'),
    path("backend/properties/property_details/<int:id>", views.Property_details, name='property_details'),
    path("backend/properties/property_edit/<int:id>", views.Property_edit, name='property_edit'),
    path("backend/properties/property_delete/<int:id>", views.Property_delete, name='property_delete'),
    path("backend/properties/del_property_image/<int:id>", views.del_property_image, name='del_property_image'),
    path("action/<int:id>/<int:id2>", views.action, name='action'),
    path("backend/properties/property_edit/propertyUpdate/", views.updateProperty, name='updateProperty'),

    ############### Inbox #####################
    path("backend/inbox", views.Inbox, name='inbox'),
    path("backend/inbox/sent", views.sent, name='sent'),
    path("backend/inbox/trash", views.trash, name='trash'),
    path("backend/inbox/important", views.important, name='important'),
    # path("backend/inbox/delete", views.delete, name='delete'),
    path("backend/compose", views.compose, name='compose'),
    path("sendEmail", views.sendEmail, name='sendEmail'),
    path("backend/inbox/viewEmail/<int:id>", views.viewEmail, name='viewEmail'),
    path("backend/inbox/replay", views.replayEmail, name='replayEmail'),
    path("backend/inbox/delete/<int:id>", views.delete, name='delete'),

    ############### Notification #####################
    path("backend/notifications", views.notification_list, name='notifications'),
    path("backend/notifications/notification_details/<int:id>", views.Notification_details, name='notification_details'),

    ############### Action #####################
    path("Inboxaction", views.Inboxaction, name='Inboxaction'),

    ############### Wish List #####################
    path('wishes/my_wishes/',views.my_wishes, name='my_wishes'),
    path('wish-list/wish/<int:id>',views.del_wishes, name='del_wishes'),


]
