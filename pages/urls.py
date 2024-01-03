from django.urls import path,include
from pages.views import home,sobre

urlpatterns = [
    path('', home),
    path('sobre', sobre),
    path('contato', include('contact.urls')),
]