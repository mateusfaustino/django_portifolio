from django.urls import path,include
from posts.views import post

urlpatterns = [
    path('', post),
]