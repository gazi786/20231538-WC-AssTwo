from django.shortcuts import render

# Create your views here.
from myportapp.models.settings_config import SiteConfiguration, SocialLinks
from myportapp.models.home import Home
from myportapp.models.education import Education
from myportapp.models.work import Work


def index(request):
    homes = Home.objects.all()

    site_config = SiteConfiguration.objects.latest("updated")
    sociallinks = SocialLinks.objects.filter(site_config=site_config)

    # work = Work.objects.objects.latest("updated")

    context = {
        "homes": homes,
        "site_config": site_config,
        "sociallinks": sociallinks,
    }  # "education": education, "work": work}

    return render(request, "index.html", context)
