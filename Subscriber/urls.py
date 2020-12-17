from django.urls import path
from . import views

urlpatterns = [
    path('subscribe_user/',views.subscribe_user, name='subscribe_user'),
    path('wish/<int:id>',views.wish_list, name='wish_list'),
    path('check_wishlist/<int:id>',views.check_wishlist, name='check_wishlist')

]