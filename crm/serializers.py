from rest_framework import serializers

from .models import Client, Contract, Event


class ClientSerializer(serializers.ModelSerializer):
    class Meta:
        model = Client
        fields = ['id', 'first_name', 'last_name', 'email', 'phone', 'mobile', 'company_name', 'date_created',
                  'date_updated', 'sales_contact']

    def validate_sales_contact(self, sales_contact):
        if not sales_contact.groups.filter(name="sales").exists():
            raise serializers.ValidationError("Sales_contact must be in group sales!")
        else:
            return sales_contact

    def create(self, validated_data):
        client = Client.objects.create(**validated_data)
        return client


class ContractSerializer(serializers.ModelSerializer):
    class Meta:
        model = Contract
        fields = ['id', 'client', 'sales_contact', 'date_created', 'date_updated', 'status', 'amount',
                  'payment_due']

    def validate_sales_contact(self, sales_contact):
        if not sales_contact.groups.filter(name="sales").exists():
            raise serializers.ValidationError("Sales_contact must be in group sales!")
        else:
            return sales_contact

    def create(self, validated_data):
        """
        Create contract and event same time
        """
        contract = Contract.objects.create(**validated_data)
        event = Event.objects.create(contract=contract, client=contract.client)
        contract.save()
        event.save()
        return contract

    def update(self, instance, validated_data):
        validated_data.pop('client', None)  # prevent client from being updated
        return super().update(instance, validated_data)


class EventSerializer(serializers.ModelSerializer):
    class Meta:
        model = Event
        fields = ['client', 'date_created', 'date_updated', 'support_contact', 'event_status', 'attendees',
                  'event_date', 'notes', 'contract']
        read_only_fields = ['client', 'contract']

    def update(self, instance, validated_data):
        # Validate data
        instance.support_contact = validated_data.get('support_contact', instance.support_contact)
        instance.event_status = validated_data.get('event_status', instance.event_status)
        instance.attendees = validated_data.get('attendees', instance.attendees)
        instance.event_date = validated_data.get('event_date', instance.event_date)
        instance.notes = validated_data.get('notes', instance.notes)

        # Check that support contact is in group support
        if not instance.support_contact.groups.filter(name="support").exists():
            raise serializers.ValidationError("Support_contact must be in group support!")
        else:
            instance.save()
            return instance
