from django.urls import path
from products.api.views import ProductListCreateAPIView, ProductDetailAPIView

urlpatterns = [
    path("products/", ProductListCreateAPIView.as_view(), name="product-list"),
    path("products/<int:pk>", ProductDetailAPIView.as_view(), name="product-detail")
]
