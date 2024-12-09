from django.db import models
from cart.models import Cart


class Sale(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE, related_name="sales")
    location = models.CharField(max_length=255)
    total = models.DecimalField(max_digits=10, decimal_places=2)
    created_at = models.DateTimeField(auto_now_add=True)
