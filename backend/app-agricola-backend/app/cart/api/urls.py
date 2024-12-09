from django.urls import path
from cart.api.views import (CartListCreateAPIView, CartDetailAPIView,
                            CartItemListCreateAPIView, CartItemDetailAPIView)

urlpatterns = [
    path("carts/", CartListCreateAPIView.as_view(), name="cart-list"),
    path("carts/<int:pk>", CartDetailAPIView.as_view(), name="cart-detail"),

    path("cartitems/", CartItemListCreateAPIView.as_view(), name="cartitem-list"),
    path("cartitems/<int:pk>", CartItemDetailAPIView.as_view(), name="cartitem-detail")
]
