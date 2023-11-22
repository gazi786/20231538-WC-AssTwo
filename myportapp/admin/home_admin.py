from django.contrib import admin

# Register your models here.
from myportapp.models.home import Home


# Home
@admin.register(Home)
class HomeAdmin(admin.ModelAdmin):
    list_display = ("name", "greetings_1", "greetings_2", "updated")
