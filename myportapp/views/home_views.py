from django.shortcuts import render

# Create your views here.
from models.settings_config import SiteConfiguration


def home_view(request):
    config = SiteConfiguration.objects.first()  # Retrieve the configuration
    return render(request, "myportfolio/home.html", {"config": config})
