from django.db import models
from ckeditor.fields import RichTextField

# Create your models here.

class Image(models.Model):
    image = models.ImageField(upload_to='images/',null = True)

class About(models.Model):
    fname = models.CharField(max_length=100,null = True)
    lname = models.CharField(max_length=100,null = True)
    email = models.EmailField(null = True)
    phone = models.CharField(max_length=14,null = True)
    address = models.TextField(null = True)
    about = RichTextField(null = True)
    linkedin = models.URLField(null = True)
    github = models.URLField(null = True)
    twitter = models.URLField(null = True)
    facebook = models.URLField(null = True)

    
class Experience(models.Model):
    job_pos_1 = models.CharField(max_length=255,null = True)
    company_nam_1 = models.CharField(max_length=255,null = True)
    start_date_1 = models.DateField(null = True, blank=True)
    end_date_1 = models.DateField(null = True, blank=True)
    job_respo_1 = RichTextField(null = True)
    
    job_pos_2 = models.CharField(max_length=255,null = True)
    company_nam_2 = models.CharField(max_length=255,null = True)
    start_date_2 = models.DateField(null = True, blank=True)
    end_date_2 = models.DateField(null = True, blank=True)
    job_respo_2 = RichTextField(null = True)
    
    job_pos_3 = models.CharField(max_length=255,null = True)
    company_nam_3 = models.CharField(max_length=255,null = True)
    start_date_3 = models.DateField(null = True, blank=True)
    end_date_3 = models.DateField(null = True, blank=True)
    job_respo_3 = RichTextField(null = True)
    
    job_pos_4 = models.CharField(max_length=255,null = True)
    company_nam_4 = models.CharField(max_length=255,null = True)
    start_date_4 = models.DateField(null = True, blank=True)
    end_date_4 = models.DateField(null = True, blank=True)
    job_respo_4 = RichTextField(null = True)
    

class Education(models.Model):
        edu_inst_1 = models.CharField(max_length=255,null = True)
        edu_dept_1 = models.CharField(max_length=255,null = True)
        edu_deg_1 = models.CharField(max_length=255,null = True)
        edu_gpa_1 = models.CharField(max_length=255,null = True)
        edu_std_1 = models.DateField(null = True, blank=True)
        edu_end_1 = models.DateField(null = True, blank=True)
        
        edu_inst_2 = models.CharField(max_length=255,null = True)
        edu_dept_2 = models.CharField(max_length=255,null = True)
        edu_deg_2 = models.CharField(max_length=255,null = True)
        edu_gpa_2 = models.CharField(max_length=255,null = True)
        edu_std_2 = models.DateField(null = True, blank=True)
        edu_end_2 = models.DateField(null = True, blank=True)
        
        edu_inst_3 = models.CharField(max_length=255,null = True)
        edu_dept_3 = models.CharField(max_length=255,null = True)
        edu_deg_3 = models.CharField(max_length=255,null = True)
        edu_gpa_3 = models.CharField(max_length=255,null = True)
        edu_std_3 = models.DateField(null = True, blank=True)
        edu_end_3 = models.DateField(null = True, blank=True)
        
        edu_inst_4 = models.CharField(max_length=255,null = True)
        edu_dept_4 = models.CharField(max_length=255,null = True)
        edu_deg_4 = models.CharField(max_length=255,null = True)
        edu_gpa_4 = models.CharField(max_length=255,null = True)
        edu_std_4 = models.DateField(null = True, blank=True)
        edu_end_4 = models.DateField(null = True, blank=True)


class Skills(models.Model):
    plt_1 = models.ImageField(upload_to='icons/',null = True)
    plt_2 = models.ImageField(upload_to='icons/',null = True)
    plt_3 = models.ImageField(upload_to='icons/',null = True)
    plt_4 = models.ImageField(upload_to='icons/',null = True)
    plt_5 = models.ImageField(upload_to='icons/',null = True)
    plt_6 = models.ImageField(upload_to='icons/',null = True)
    plt_7 = models.ImageField(upload_to='icons/',null = True)
    plt_8 = models.ImageField(upload_to='icons/',null = True)
    plt_9 = models.ImageField(upload_to='icons/',null = True)
    plt_10 = models.ImageField(upload_to='icons/',null = True)
    
    workflow = RichTextField(null = True)
    
class Inter(models.Model):
    Interests = RichTextField(null = True)
    

class Awr_Cer(models.Model):
    AC_1 = models.CharField(max_length=255,null = True)
    AC_2 = models.CharField(max_length=255,null = True)
    AC_3 = models.CharField(max_length=255,null = True)
    AC_4 = models.CharField(max_length=255,null = True)
    AC_5 = models.CharField(max_length=255,null = True)
    AC_6 = models.CharField(max_length=255,null = True)
    AC_7 = models.CharField(max_length=255,null = True)
    

