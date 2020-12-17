from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('register/register_user', views.register_user, name='register_user'),
    path('register/update_profile', views.update_profile, name='update_profile'),
    path('', views.home, name='home'),
    path('register/register_user', views.register_user, name='register_user'),
    path('register/update_profile', views.update_profile, name='update_profile'),
    # path('accounts/login/',views.index, name='index'),
    # path('accounts/profile/',views.index, name='index'),
    # path('admin/',views.dashboard, name='dashboard'),
    path('register/', views.Register, name='register'),
    path('user/password/change-password/', views.up_pass, name='up_pass'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('Contact/', views.Contact, name='Contact'),
    path('terms_conditions/', views.terms_conditions, name='terms_conditions'),
    path('legal_support/', views.legal_support, name='legal_support'),
    path('financial_support/', views.financial_support, name='financial_support'),
    path("faq/", views.FaqView, name='faq'),
    path("contact/", views.ContactView.as_view(), name='contact'),
    path("AddList/", views.AdList, name='AddList'),
    path("propertySearch/", views.propertySearch, name='propertySearch'),
    path("searchPropertyCat/<int:id>", views.searchPropertyCat, name='searchPropertyCat'),
    path("sort_by/<int:id>", views.sort_by, name='sort_by'),
    path("propertyRangeSearch/", views.propertyRangeSearch, name='propertyRangeSearch'),
    path("search/", views.search, name='search'),
    path("forgotPassword/", views.ForgotPasswordView.as_view(), name='ForgotPassword'),
    path("ADDetails/<int:id>", views.AdDetails, name='ADDetails'),
    path("underConstruction/", views.UnderConstructionView.as_view(), name='UnderConstruction'),
    path("userProfile/", views.UserProfileView.as_view(), name='UserProfile'),
    path("userDashboard/", views.UserDashBoardView.as_view(), name='UserDashboard'),
    path("userAds/", views.UserAdsView.as_view(), name='UserAds'),
    path("about/", views.about, name='About'),
    path("user/edit/", views.UserEditProfile.as_view(), name='UserEdit'),
    path("Property/edit/<str:id>", views.edit_property, name='edit_property'),
    path("all_locations/", views.all_locations, name='all_locations'),

    path("forgate-password/", views.forgate_password, name='forgate_password'),
    path("passReset/", views.passReset, name='passReset'),

    path("reset_password/", auth_views.PasswordResetView.as_view(), name = 'reset_password'),
    path("reset_password_sent/", auth_views.PasswordResetDoneView.as_view(), name = 'password_reset_done'),
    path("reset/<uidb64>/<token>/", auth_views.PasswordResetConfirmView.as_view(), name='password_reset_confirm'),
    path("reset_password_complete/", auth_views.PasswordResetCompleteView.as_view(), name = 'password_reset_complete'),

    # Wish
    path('check_wish_list/<int:id>',views.check_wish_list, name='check_wish_list'),
    path('wish-list/remove-wish/<int:id>',views.remove_wish, name='remove_wish')


]
