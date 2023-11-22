from django.contrib import admin

# Register your models here.
from myportapp.models.settings_config import SiteConfiguration, SocialLinks


# Site Configurations
class SocialLinksInline(admin.TabularInline):
    model = SocialLinks
    extra = 1


@admin.register(SiteConfiguration)
class SiteAdmin(admin.ModelAdmin):
    list_display = ("author", "position", "country", "logo", "updated")
    inlines = [SocialLinksInline]
