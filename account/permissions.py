from rest_framework import permissions


class AccountPermission(permissions.BasePermission):
    # Custom permission user in groups sales, support and manager to read only users and groups

    def has_permission(self, request, view):
        user = request.user
        if user.groups.filter(name__in=['sales', 'support', 'management']):
            return request.method in permissions.SAFE_METHODS
        else:
            return False
