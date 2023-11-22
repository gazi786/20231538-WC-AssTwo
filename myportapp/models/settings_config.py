from django.db import models


class SiteConfiguration(models.Model):
    author = models.CharField(max_length=50, default=" ")
    position = models.CharField(max_length=50, default=" ")
    country = models.CharField(max_length=50, default=" ")
    logo = models.ImageField(upload_to="logos/")
    updated = models.DateTimeField(auto_now=True)
    # Other configuration fields

    def __str__(self):
        return "Site Configuration"


class SocialLinks(models.Model):
    site_config = models.ForeignKey(SiteConfiguration, on_delete=models.CASCADE)
    social_name = models.CharField(max_length=10, default=" ")
    social_icon = models.CharField(max_length=99, default=" ")
    link = models.URLField(max_length=300)
