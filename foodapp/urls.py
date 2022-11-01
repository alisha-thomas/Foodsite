from django.urls import path
from .import views

urlpatterns = [
    path('hello', views.say_hello),
    path('ownerpage', views.ownerpage),
    path('addfoodpg', views.addfoodpg),
    path('list_items', views.list_items),
    path('addfood', views.addfood),
    path('deletefoodpg', views.deletefoodpg),
    path('deletefood', views.deletefood),
    path('updatefoodpg', views.updatefoodpg),
    path('updatefood', views.updatefood),
    path('qr_code', views.qr_code)
]