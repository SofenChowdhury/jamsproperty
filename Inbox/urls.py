from django.urls import path
from . import views

urlpatterns = [
    path('send_message/',views.send_message, name='send_message'),
]