from django.urls import path, include
from . import views

from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.home_page, name='home'),
    path('admin', views.admin, name='admin'),
    path('admin_edit', views.admin_edit, name='admin_edit'),
    path('add_image', views.add_image, name='add_image'),
    path('add_about', views.add_about, name='add_about'),
    path('add_inter', views.add_inter, name='add_inter'),
    path('add_exp', views.add_exp, name='add_exp'),
    path('add_edu', views.add_edu, name='add_edu'),
    path('add_AC', views.add_AC, name='add_AC'),
    path('add_skill', views.add_skill, name='add_skill'),
    path('update_image', views.update_image, name='update_image'),
    path('update_about', views.update_about, name='update_about'),
    path('update_experience', views.update_experience, name='update_experience'),
    path('update_education', views.update_education, name='update_education'),
    path('update_skills', views.update_skills, name='update_skills'),
    path('update_interests', views.update_interests, name='update_interests'),
    path('update_award', views.update_award, name='update_award'),
    
] + static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)