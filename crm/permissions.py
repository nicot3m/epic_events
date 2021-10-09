from rest_framework import permissions


class ClientPermission(permissions.BasePermission):
    """
    Custom permission for object Client
    Nobody can delete a client
    Users in groups support and management can only read client
    Users in group sales can create and update a client
    """

    def has_permission(self, request, view):
        if request.method == 'DELETE':
            return False
        user = request.user
        if user.groups.filter(name='sales').exists():
            return True
        if user.groups.filter(name__in=['support', 'management']):
            return request.method in permissions.SAFE_METHODS
        else:
            return False

    def has_object_permission(self, request, view, obj):
        user = request.user
        if user.groups.filter(name="sales").exists():
            return True
        if user.groups.filter(name__in=['support', 'management']):
            return request.method in permissions.SAFE_METHODS
        else:
            return False


class ContractPermission(permissions.BasePermission):
    """
    Custom permission for object Contract
    Nobody can delete a contract
    Users in groups support and management can only read contract
    Users in group sales can create and update a contract
    """

    def has_permission(self, request, view):
        if request.method == 'DELETE':
            return False
        user = request.user
        if user.groups.filter(name='sales').exists():
            return True
        if user.groups.filter(name__in=['support', 'management']):
            return request.method in permissions.SAFE_METHODS
        else:
            return False

    def has_object_permission(self, request, view, obj):
        user = request.user
        if user.groups.filter(name="sales").exists():
            return True
        if user.groups.filter(name__in=['support', 'management']):
            return request.method in permissions.SAFE_METHODS
        else:
            return False


class EventPermission(permissions.BasePermission):
    """
    Custom permission for object Event
    Nobody can delete an event
    Users in group management can only read an event
    Users in group support (support_contact user) can read and update an event while event_status is True.
    Users in group sales can read and update an event
    """

    def has_permission(self, request, view):
        if request.method == 'DELETE':
            return False
        user = request.user
        if user.groups.filter(name='sales').exists():
            return True
        if user.groups.filter(name='management').exists():
            return request.method in permissions.SAFE_METHODS
        if user.groups.filter(name='support').exists():
            return request.method in ['GET', 'PUT']
        else:
            return False

    def has_object_permission(self, request, view, obj):
        user = request.user
        if user.groups.filter(name="sales").exists():
            return request.method in ['GET', 'PUT']
        if user.groups.filter(name='management').exists():
            return request.method in permissions.SAFE_METHODS
        if user.groups.filter(name='support').exists():
            if user == obj.support_contact and obj.event_status is True:
                return request.method in ['GET', 'PUT']
        else:
            return False
