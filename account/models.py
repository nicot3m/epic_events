from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    def __str__(self):
        return "User" + str(self.id) + " is " + self.username

    class Meta:
        ordering = ['id']
