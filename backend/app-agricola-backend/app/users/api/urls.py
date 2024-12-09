from django.urls import path
from users.api.views import UserListCreateAPIView, UserDetailAPIView

urlpatterns = [
    path("users/", UserListCreateAPIView.as_view(), name="user-list"),
    path("users/<int:pk>", UserDetailAPIView.as_view(), name="user-detail")
]
