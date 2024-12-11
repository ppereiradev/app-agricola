from django.urls import path
from users.api.views import UserListCreateAPIView, UserDetailAPIView, UserByUsernameAPIView

urlpatterns = [
    path("users/", UserListCreateAPIView.as_view(), name="user-list"),
    path("users/<int:pk>", UserDetailAPIView.as_view(), name="user-detail"),
    path("users/<str:username>", UserByUsernameAPIView.as_view(), name="user-username")
]
