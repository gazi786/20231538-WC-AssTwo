from django.shortcuts import render

# Create your views here.
from myportapp.models.education import Education


def education(request):

    education = Education.objects.latest("updated")

    context = {"education": education}

    return render(request, "education.html", context)
