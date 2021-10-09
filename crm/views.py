from rest_framework import permissions
from rest_framework.viewsets import ModelViewSet
import logging

from .serializers import ClientSerializer, ContractSerializer, EventSerializer
from .models import Client, Contract, Event
from .permissions import ClientPermission, ContractPermission, EventPermission

# Create your views here.
logger = logging.getLogger('django')


class ClientViewSet(ModelViewSet):
    """
    API endpoints to create, view, edit or delete a client
    """
    queryset = Client.objects.all()
    serializer_class = ClientSerializer
    permission_classes = [permissions.IsAuthenticated, ClientPermission]


class ContractViewSet(ModelViewSet):
    """
    API endpoints to create, view, edit or delete a contract
    """
    queryset = Contract.objects.all()
    serializer_class = ContractSerializer
    permission_classes = [permissions.IsAuthenticated, ContractPermission]


class EventViewSet(ModelViewSet):
    """
    API endpoints to create, view, edit or delete an event
    """
    queryset = Event.objects.all()
    serializer_class = EventSerializer
    permission_classes = [permissions.IsAuthenticated, EventPermission]
