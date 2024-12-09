from rest_framework import serializers
from products.models import Product
from users.api.serializers import UserSerializer
from users.models import User

class ProductSerializer(serializers.ModelSerializer):
    seller = serializers.PrimaryKeyRelatedField(queryset=User.objects.all())

    class Meta:
        model = Product
        fields = "__all__"
