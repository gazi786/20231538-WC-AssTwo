from django.db import models


# Create your models here.
class Work(models.Model):
    heading = models.CharField(max_length=50)
    career = models.CharField(max_length=20)
    description = models.TextField(blank=False)
    profile_img = models.ImageField(upload_to="profile/")

    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.career
