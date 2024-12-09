from django.urls import path
from sales.api.views import SaleListCreateAPIView, SaleDetailAPIView

urlpatterns = [
    path("sales/", SaleListCreateAPIView.as_view(), name="sale-list"),
    path("sales/<int:pk>", SaleDetailAPIView.as_view(), name="sale-detail")
]
