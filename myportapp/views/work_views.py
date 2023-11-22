from django.shortcuts import render

# Create your views here.
from myportapp.models.work import Work


def work(request):

    work = Work.objects.objects.latest("updated")

    context = {"work": work}

    return render(request, "work.html", context)
