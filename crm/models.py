from django.db import models

from django.conf import settings


class Client(models.Model):
    first_name = models.CharField(max_length=25)
    last_name = models.CharField(max_length=25)
    email = models.EmailField(100)
    phone = models.CharField(max_length=20, blank=True, null=True)
    mobile = models.CharField(max_length=20, blank=True, null=True)
    company_name = models.CharField(max_length=25)
    date_created = models.DateTimeField(auto_now_add=True)
    date_updated = models.DateTimeField(auto_now=True, blank=True, null=True)
    sales_contact = models.ForeignKey(to=settings.AUTH_USER_MODEL, on_delete=models.CASCADE, blank=True, null=True)

    def __str__(self):
        return "Client " + str(self.id) + " is " + self.first_name + " " + self.last_name

    class Meta:
        ordering = ['id']


class Contract(models.Model):
    client = models.ForeignKey(to=Client, on_delete=models.CASCADE, blank=True, null=True)
    sales_contact = models.ForeignKey(to=settings.AUTH_USER_MODEL, on_delete=models.CASCADE, blank=True, null=True)
    date_created = models.DateTimeField(auto_now_add=True)
    date_updated = models.DateTimeField(auto_now=True, blank=True, null=True)
    status = models.BooleanField(default=True)  # True while in progress
    amount = models.FloatField(blank=True, null=True)
    payment_due = models.DateField(blank=True, null=True)

    def __str__(self):
        return "Contract " + str(self.id) + " is between seller " + str(self.sales_contact.id) + \
               " and client " + str(self.client.id)

    class Meta:
        ordering = ['id']


class Event(models.Model):
    client = models.ForeignKey(to=Client, on_delete=models.CASCADE, blank=True, null=True)
    date_created = models.DateTimeField(auto_now_add=True)
    date_updated = models.DateTimeField(auto_now=True, blank=True, null=True)
    support_contact = models.ForeignKey(to=settings.AUTH_USER_MODEL, on_delete=models.CASCADE, blank=True, null=True)
    event_status = models.BooleanField(default=False)  # True for in progress and support_contact defined
    attendees = models.IntegerField(blank=True, null=True)
    event_date = models.DateField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    contract = models.OneToOneField(Contract, on_delete=models.CASCADE, primary_key=True)

    def __str__(self):
        return "Event of contract " + str(self.contract.id) + " is between support " + str(self.support_contact.id) + \
               " and client " + str(self.client.id)

    class Meta:
        ordering = ['-event_date']
