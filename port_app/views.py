from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Image, About, Inter, Experience, Education, Awr_Cer, Skills
from django.urls import reverse
from datetime import datetime
from django.utils.dateparse import parse_date
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required



############### Authentication Start #########################

def login_user(request): # dont make the function name login which will conflict with import login.
    if request.method == 'POST':
        uname = request.POST.get('uname')
        pass1 = request.POST.get('pass')
        user = authenticate(request, username = uname, password  = pass1)

        if user is not None:
            login(request,user)
            return redirect('admin')
        else:
            return HttpResponse("Wrong password")

    return render(request,'login.html')



def logout_user(request):
    logout(request)
    return redirect('home')



def register(request):
    if request.method == 'POST':
        uname = request.POST.get('uname')
        pass1 = request.POST.get('pass1')
        pass2 = request.POST.get('pass2')
        if pass1 != pass2:
            return HttpResponse("Password is not matching with confirm password, please try again")
        else:
            my_user = User.objects.create_user(uname,pass1,pass2)
            my_user.save()

            return render(request,'login.html')

    return render(request,'reg.html')

############### Authentication End #########################



############### Read Operatoin Start #########################

def home_page(request):
    image_data = Image.objects.last()
    about_data = About.objects.last()
    experience_data = Experience.objects.last()
    education_data = Education.objects.last()
    skills_data = Skills.objects.last()
    interest_data = Inter.objects.last()
    awr_cer_data = Awr_Cer.objects.last()

    context = {
        'image_data': image_data,
        'about_data': about_data,
        'experience_data': experience_data,
        'education_data' : education_data,
        'skills_data' : skills_data,
        'interest_data' : interest_data,
        'awr_cer_data' : awr_cer_data,
        
    }

    return render(request, 'index.html', context)

############### Read Operatoin End #########################


############### Creat Operatoin Start #########################
@login_required(login_url='login_user')
def admin(request):
    image_data = Image.objects.last()
    context = {
        'image_data': image_data,
    }
    return render(request, 'admin.html', context)


@login_required(login_url='login_user')
def admin_edit(request):
    image_data = Image.objects.last()
    context = {
        'image_data': image_data,
    }
    return render(request, 'admin_edit.html', context)

@login_required(login_url='login_user')
def add_image(request):
    if request.method == 'POST':
        image = request.FILES.get('pro_img')
        
        context = Image(
            image=image,
        )
        context.save()
        return redirect('admin')
        
    return render(request, 'index.html') 


@login_required(login_url='login_user')
def add_about(request):
    if request.method == 'POST':
        fname = request.POST.get('fname')
        lname = request.POST.get('lname')
        email = request.POST.get('email')
        phone = request.POST.get('phone')
        address = request.POST.get('address')
        about = request.POST.get('about')
        linkedin = request.POST.get('linkedin')
        github = request.POST.get('github')
        twitter = request.POST.get('twitter')
        facebook = request.POST.get('facebook')
        
        context = About(
            fname=fname,
            lname=lname,
            email=email,
            phone=phone,
            address=address,
            about=about,
            linkedin=linkedin,
            github=github,
            twitter=twitter,
            facebook=facebook
            )
        context.save()
        return redirect('admin')
        
    return render(request, 'index.html')



@login_required(login_url='login_user')
def add_exp(request):
    if request.method == 'POST':
        job_pos_1 = request.POST.get('job_pos_1')
        company_nam_1 = request.POST.get('company_nam_1')
        start_date_1 = request.POST.get('start_date_1')
        if len(start_date_1) == 0:
            start_date_1 = None
        end_date_1 = request.POST.get('end_date_1')
        if len(end_date_1) == 0:
            end_date_1 = None
        job_respo_1 = request.POST.get('job_respo_1')
        
        job_pos_2 = request.POST.get('job_pos_2')
        company_nam_2 = request.POST.get('company_nam_2')
        start_date_2 = request.POST.get('start_date_2')
        if len(start_date_2) == 0:
            start_date_2 = None
        end_date_2 = request.POST.get('end_date_2')
        if len(end_date_2) == 0:
            end_date_2 = None
        job_respo_2 = request.POST.get('job_respo_2')
        
        job_pos_3 = request.POST.get('job_pos_3')
        company_nam_3 = request.POST.get('company_nam_3')
        start_date_3 = request.POST.get('start_date_3')
        if len(start_date_3) == 0:
            start_date_3 = None
        end_date_3 = request.POST.get('end_date_3')
        if len(end_date_3) == 0:
            end_date_3 = None
        job_respo_3 = request.POST.get('job_respo_3')
        
        job_pos_4 = request.POST.get('job_pos_4')
        company_nam_4 = request.POST.get('company_nam_4')
        start_date_4 = request.POST.get('start_date_4')
        if len(start_date_4) == 0:
            start_date_4 = None
        end_date_4 = request.POST.get('end_date_4')
        if len(end_date_4) == 0:
            end_date_4 = None
        job_respo_4 = request.POST.get('job_respo_4')
        
        
        context = Experience(
            job_pos_1 = job_pos_1,
            company_nam_1 = company_nam_1,
            start_date_1 = start_date_1,
            end_date_1 = end_date_1,
            job_respo_1 = job_respo_1, 
            
            job_pos_2 = job_pos_2,
            company_nam_2 = company_nam_2,
            start_date_2 = start_date_2,
            end_date_2 = end_date_2,
            job_respo_2 = job_respo_2,
            
            job_pos_3 = job_pos_3,
            company_nam_3 = company_nam_3,
            start_date_3 = start_date_3,
            end_date_3 = end_date_3,
            job_respo_3 = job_respo_3,
            
            job_pos_4 = job_pos_4,
            company_nam_4 = company_nam_4,
            start_date_4 = start_date_4,
            end_date_4 = end_date_4,
            job_respo_4 = job_respo_4,
        )
        context.save()
        return redirect('admin')
    return render(request, 'index.html')


@login_required(login_url='login_user')
def add_edu(request):
    if request.method == 'POST':
        edu_inst_1 = request.POST.get('edu_inst_1')
        edu_dept_1 = request.POST.get('edu_dept_1')
        edu_deg_1 = request.POST.get('edu_deg_1')
        edu_gpa_1 = request.POST.get('edu_gpa_1')
        edu_std_1 = request.POST.get('edu_std_1')
        if len(edu_std_1) == 0:
            edu_std_1 = None
        edu_end_1 = request.POST.get('edu_end_1')
        if len(edu_end_1) == 0:
            edu_end_1 = None
        
        
        
        edu_inst_2 = request.POST.get('edu_inst_2')
        edu_dept_2 = request.POST.get('edu_dept_2')
        edu_deg_2 = request.POST.get('edu_deg_2')
        edu_gpa_2 = request.POST.get('edu_gpa_2')
        edu_std_2 = request.POST.get('edu_std_2')
        if len(edu_std_2) == 0:
            edu_std_2 = None
        edu_end_2 = request.POST.get('edu_end_2')
        if len(edu_end_2) == 0:
            edu_end_2 = None
        
        
        edu_inst_3 = request.POST.get('edu_inst_3')
        edu_dept_3 = request.POST.get('edu_dept_3')
        edu_deg_3 = request.POST.get('edu_deg_3')
        edu_gpa_3 = request.POST.get('edu_gpa_3')
        edu_std_3 = request.POST.get('edu_std_3')
        if len(edu_std_3) == 0:
            edu_std_3 = None
        edu_end_3 = request.POST.get('edu_end_3')
        if len(edu_end_3) == 0:
            edu_end_3 = None
        
        
        
        edu_inst_4 = request.POST.get('edu_inst_4')
        edu_dept_4 = request.POST.get('edu_dept_4')
        edu_deg_4 = request.POST.get('edu_deg_4')
        edu_gpa_4 = request.POST.get('edu_gpa_4')
        edu_std_4 = request.POST.get('edu_std_4')
        if len(edu_std_4) == 0:
            edu_std_4 = None
        edu_end_4 = request.POST.get('edu_end_4')
        if len(edu_end_4) == 0:
            edu_end_4 = None
            
            
        context = Education(
            edu_inst_1 = edu_inst_1,
            edu_dept_1 = edu_dept_1,
            edu_deg_1 = edu_deg_1,
            edu_gpa_1 = edu_gpa_1,
            edu_std_1 = edu_std_1,
            edu_end_1 = edu_end_1,
            
            edu_inst_2 = edu_inst_2,
            edu_dept_2 = edu_dept_2,
            edu_deg_2 = edu_deg_2,
            edu_gpa_2 = edu_gpa_2,
            edu_std_2 = edu_std_2,
            edu_end_2 = edu_end_2,
            
            edu_inst_3 = edu_inst_3,
            edu_dept_3 = edu_dept_3,
            edu_deg_3 = edu_deg_3,
            edu_gpa_3 = edu_gpa_3,
            edu_std_3 = edu_std_3,
            edu_end_3 = edu_end_3,
            
            edu_inst_4 = edu_inst_4,
            edu_dept_4 = edu_dept_4,
            edu_deg_4 = edu_deg_4,
            edu_gpa_4 = edu_gpa_4,
            edu_std_4 = edu_std_4,
            edu_end_4 = edu_end_4,
            
        )
        context.save()
        return redirect('admin')
    return render(request, 'index.html')


@login_required(login_url='login_user')
def add_skill(request):
    if request.method == 'POST':
        plt_1 = request.FILES.get('plt_1')
        plt_2 = request.FILES.get('plt_2')
        plt_3 = request.FILES.get('plt_3')
        plt_4 = request.FILES.get('plt_4')
        plt_5 = request.FILES.get('plt_5')
        plt_6 = request.FILES.get('plt_6')
        plt_7 = request.FILES.get('plt_7')
        plt_8 = request.FILES.get('plt_8')
        plt_9 = request.FILES.get('plt_9')
        plt_10 = request.FILES.get('plt_10')
        
        
        workflow = request.POST.get('workflow')
        
        context = Skills(
            plt_1 = plt_1,
            plt_2 = plt_2,
            plt_3 = plt_3,
            plt_4 = plt_4,
            plt_5 = plt_5,
            plt_6 = plt_6,
            plt_7 = plt_7,
            plt_8 = plt_8,
            plt_9 = plt_9,
            plt_10 = plt_10,
            workflow = workflow
        )
        context.save()
        return redirect('admin')
        
    return render(request, 'index.html')



@login_required(login_url='login_user')
def add_AC(request):
    if request.method == 'POST':
        AC_1 = request.POST.get("AC_1")
        AC_2 = request.POST.get("AC_2")
        AC_3 = request.POST.get("AC_3")
        AC_4 = request.POST.get("AC_4")
        AC_5 = request.POST.get("AC_5")
        AC_6 = request.POST.get("AC_6")
        AC_7 = request.POST.get("AC_7")
        
        context = Awr_Cer(
            AC_1 = AC_1,
            AC_2 = AC_2,
            AC_3 = AC_3,
            AC_4 = AC_4,
            AC_5 = AC_5,
            AC_6 = AC_6,
            AC_7 = AC_7,
        )
        context.save()
        return redirect('admin')
        
    return render(request, 'index.html')



@login_required(login_url='login_user')
def add_inter(request):
    if request.method == 'POST':
        Interests = request.POST.get('Interests')
        
        context = Inter(
            Interests =Interests
        )
        context.save()
        return redirect('admin')
        
    return render(request, 'index.html')
    


############### Creat Operatoin End #########################



############### Update Operatoin Start #########################

@login_required(login_url='login_user')
def update_image(request):
    try:
        
        update_image = Image.objects.latest('id')
        
        if request.method == 'POST':
            update_image.image = request.FILES.get('pro_img')
            update_image.save()
            return redirect('update_image')
        
        return render(request, 'edit_file/image_edit.html', {
            'image_data': Image.objects.last().image,
            'pro_img': update_image, 
        })

    except Image.DoesNotExist:
        return HttpResponse('No image records found')



@login_required(login_url='login_user')
def update_about(request):
    try:
        
        update_about = About.objects.latest('id') 

        if request.method == 'POST':
            update_about.fname = request.POST.get('fname')
            update_about.lname = request.POST.get('lname')
            update_about.email = request.POST.get('email')
            update_about.phone = request.POST.get('phone')
            update_about.address = request.POST.get('address')
            update_about.about = request.POST.get('about')
            update_about.linkedin = request.POST.get('linkedin')
            update_about.github = request.POST.get('github')
            update_about.twitter = request.POST.get('twitter')
            update_about.facebook = request.POST.get('facebook')
            
            update_about.save()

            return redirect('update_about')

        return render(request, 'edit_file/about_edit.html', {
            'image_data': Image.objects.last().image,
            'fname': update_about.fname,
            'lname': update_about.lname,
            'email': update_about.email,
            'phone': update_about.phone,
            'address': update_about.address,
            'about': update_about.about,
            'linkedin': update_about.linkedin,
            'github': update_about.github,
            'twitter': update_about.twitter,
            'facebook': update_about.facebook
        })

    except About.DoesNotExist:
        return HttpResponse('No records found')
    
    
@login_required(login_url='login_user')    
def update_experience(request):
    try:
        update_exp = Experience.objects.latest('id') 

        if request.method == 'POST':
            
            update_exp.job_pos_1 = request.POST.get('job_pos_1')
            
            update_exp.company_nam_1 = request.POST.get('company_nam_1')
            start_date_1 = request.POST.get('start_date_1')
            update_exp.start_date_1 = parse_date(start_date_1) if start_date_1 else (update_exp.start_date_1 if update_exp.start_date_1 else None)
            end_date_1 = request.POST.get('end_date_1')
            update_exp.end_date_1 = parse_date(end_date_1) if end_date_1 else (update_exp.end_date_1 if update_exp.end_date_1 else None)
            update_exp.job_respo_4 = request.POST.get('job_respo_1')
            
            
            
            update_exp.job_pos_2 = request.POST.get('job_pos_2')
            update_exp.company_nam_2 = request.POST.get('company_nam_2')
            start_date_2 = request.POST.get('start_date_2')
            update_exp.start_date_2 = parse_date(start_date_2) if start_date_2 else (update_exp.start_date_2 if update_exp.start_date_2 else None)
            end_date_2 = request.POST.get('end_date_2')
            update_exp.end_date_2 = parse_date(end_date_2) if end_date_2 else (update_exp.end_date_2 if update_exp.end_date_2 else None)
            update_exp.job_respo_2 = request.POST.get('job_respo_2')
            
            update_exp.job_pos_3 = request.POST.get('job_pos_3')
            update_exp.company_nam_3 = request.POST.get('company_nam_3')
            start_date_3 = request.POST.get('start_date_3')
            update_exp.start_date_3 = parse_date(start_date_3) if start_date_3 else (update_exp.start_date_3 if update_exp.start_date_3 else None)
            end_date_3 = request.POST.get('end_date_3')
            update_exp.end_date_3 = parse_date(end_date_3) if end_date_3 else (update_exp.end_date_3 if update_exp.end_date_3 else None)
            update_exp.job_respo_3 = request.POST.get('job_respo_3')
            
            update_exp.job_pos_4 = request.POST.get('job_pos_4')
            update_exp.company_nam_4 = request.POST.get('company_nam_4')
            start_date_4 = request.POST.get('start_date_4')
            update_exp.start_date_4 = parse_date(start_date_4) if start_date_4 else (update_exp.start_date_4 if update_exp.start_date_4 else None)
            end_date_4 = request.POST.get('end_date_4')
            update_exp.end_date_4 = parse_date(end_date_4) if end_date_4 else (update_exp.end_date_4 if update_exp.end_date_4 else None)
            update_exp.job_respo_4 = request.POST.get('job_respo_4')
            
            update_exp.save()

            return redirect('update_experience')

        return render(request, 'edit_file/experience_edit.html', {
            'image_data': Image.objects.last().image,
            'job_pos_1': update_exp.job_pos_1,
            'company_nam_1': update_exp.company_nam_1,
            'start_date_1': update_exp.start_date_1,
            'end_date_1': update_exp.end_date_1,
            'job_respo_1':update_exp.job_respo_1,
        
            'job_pos_2': update_exp.job_pos_2,
            'company_nam_2': update_exp.company_nam_2,
            'start_date_2': update_exp.start_date_2,
            'end_date_2': update_exp.end_date_2,
            'job_respo_2':update_exp.job_respo_2,
        
            'job_pos_3': update_exp.job_pos_3,
            'company_nam_3': update_exp.company_nam_3,
            'start_date_3': update_exp.start_date_3,
            'end_date_3': update_exp.end_date_3,
            'job_respo_3':update_exp.job_respo_3,
        
            'job_pos_4': update_exp.job_pos_4,
            'company_nam_4': update_exp.company_nam_4,
            'start_date_4': update_exp.start_date_4,
            'end_date_4': update_exp.end_date_4,
            'job_respo_4':update_exp.job_respo_4,
        
        
            
        })

    except About.DoesNotExist:
        return HttpResponse('No records found')
    
    
@login_required(login_url='login_user')   
def update_education(request):
    try:
        update_education = Education.objects.latest('id') 

        if request.method == 'POST':
            
            update_education.edu_inst_1 = request.POST.get('edu_inst_1')
            update_education.edu_dept_1 = request.POST.get('edu_dept_1')
            update_education.edu_deg_1 = request.POST.get('edu_deg_1')
            update_education.edu_gpa_1 = request.POST.get('edu_gpa_1')
            edu_std_1 = request.POST.get('edu_std_1')
            update_education.edu_std_1 = parse_date(edu_std_1) if edu_std_1 else (update_education.edu_std_1 if update_education.edu_std_1 else None)
            edu_end_1 = request.POST.get('edu_end_1')
            update_education.edu_end_1 = parse_date(edu_end_1) if edu_end_1 else (update_education.edu_end_1 if update_education.edu_end_1 else None)
            
            update_education.edu_inst_2 = request.POST.get('edu_inst_2')
            update_education.edu_dept_2 = request.POST.get('edu_dept_2')
            update_education.edu_deg_2 = request.POST.get('edu_deg_2')
            update_education.edu_gpa_2 = request.POST.get('edu_gpa_2')
            edu_std_2 = request.POST.get('edu_std_2')
            update_education.edu_std_2 = parse_date(edu_std_2) if edu_std_2 else (update_education.edu_std_2 if update_education.edu_std_2 else None)
            edu_end_2 = request.POST.get('edu_end_2')
            update_education.edu_end_2 = parse_date(edu_end_2) if edu_end_2 else (update_education.edu_end_2 if update_education.edu_end_2 else None)
            
            
            update_education.edu_inst_3 = request.POST.get('edu_inst_3')
            update_education.edu_dept_3 = request.POST.get('edu_dept_3')
            update_education.edu_deg_3 = request.POST.get('edu_deg_3')
            update_education.edu_gpa_3 = request.POST.get('edu_gpa_3')
            edu_std_3 = request.POST.get('edu_std_3')
            update_education.edu_std_3 = parse_date(edu_std_3) if edu_std_3 else (update_education.edu_std_3 if update_education.edu_std_3 else None)
            edu_end_3 = request.POST.get('edu_end_3')
            update_education.edu_end_3 = parse_date(edu_end_3) if edu_end_3 else (update_education.edu_end_3 if update_education.edu_end_3 else None)
            
            
            update_education.edu_inst_4 = request.POST.get('edu_inst_4')
            update_education.edu_dept_4 = request.POST.get('edu_dept_4')
            update_education.edu_deg_4 = request.POST.get('edu_deg_4')
            update_education.edu_gpa_4 = request.POST.get('edu_gpa_4')
            edu_std_4 = request.POST.get('edu_std_4')
            update_education.edu_std_4 = parse_date(edu_std_4) if edu_std_4 else (update_education.edu_std_4 if update_education.edu_std_4 else None)
            edu_end_4 = request.POST.get('edu_end_4')
            update_education.edu_end_4 = parse_date(edu_end_4) if edu_end_4 else (update_education.edu_end_4 if update_education.edu_end_4 else None)
            
            update_education.save()

            return redirect('update_education')

        return render(request, 'edit_file/education_edit.html', {
            'image_data': Image.objects.last().image,
            'edu_inst_1': update_education.edu_inst_1,
            'edu_dept_1': update_education.edu_dept_1,
            'edu_deg_1': update_education.edu_deg_1,
            'edu_gpa_1': update_education.edu_gpa_1,
            'edu_std_1': update_education.edu_std_1,
            'edu_end_1': update_education.edu_end_1,
            
            'edu_inst_2': update_education.edu_inst_2,
            'edu_dept_2': update_education.edu_dept_2,
            'edu_deg_2': update_education.edu_deg_2,
            'edu_gpa_2': update_education.edu_gpa_2,
            'edu_std_2': update_education.edu_std_2,
            'edu_end_2': update_education.edu_end_2,
            
            'edu_inst_3': update_education.edu_inst_3,
            'edu_dept_3': update_education.edu_dept_3,
            'edu_deg_3': update_education.edu_deg_3,
            'edu_gpa_3': update_education.edu_gpa_3,
            'edu_std_3': update_education.edu_std_3,
            'edu_end_3': update_education.edu_end_3,
            
            'edu_inst_4': update_education.edu_inst_4,
            'edu_dept_4': update_education.edu_dept_4,
            'edu_deg_4': update_education.edu_deg_4,
            'edu_gpa_4': update_education.edu_gpa_4,
            'edu_std_4': update_education.edu_std_4,
            'edu_end_4': update_education.edu_end_4,
        })

    except About.DoesNotExist:
        return HttpResponse('No records found')


@login_required(login_url='login_user')
def update_skills(request):
    try:
        update_skills = Skills.objects.latest('id')

        if request.method == 'POST':
            for i in range(1, 11):
                plt_field_name = f'plt_{i}'
                new_plt = request.FILES.get(plt_field_name)
                if new_plt:
                    setattr(update_skills, plt_field_name, new_plt)

            update_skills.workflow = request.POST.get('workflow')
            update_skills.save()

            return redirect('update_skills')
        
        return render(request, 'edit_file/skill_edit.html', {
            'image_data': Image.objects.last().image,
            'plt_1': update_skills.plt_1,
            'plt_2': update_skills.plt_2,
            'plt_3': update_skills.plt_3,
            'plt_4': update_skills.plt_4,
            'plt_5': update_skills.plt_5,
            'plt_6': update_skills.plt_6,
            'plt_7': update_skills.plt_7,
            'plt_8': update_skills.plt_8,
            'plt_9': update_skills.plt_9,
            'plt_10': update_skills.plt_10,
            'workflow': update_skills.workflow
        })

    except About.DoesNotExist:
        return HttpResponse('No records found')



@login_required(login_url='login_user')
def update_interests(request):
    try:
        update_inter = Inter.objects.latest('id') 

        if request.method == 'POST':
            update_inter.Interests = request.POST.get('Interests')
            update_inter.save()

            return redirect('update_interests')

        return render(request, 'edit_file/Interests_edit.html', {
            'image_data': Image.objects.last().image,
            'Interests': update_inter.Interests,

        })

    except About.DoesNotExist:
        return HttpResponse('No records found')
    
    
    
@login_required(login_url='login_user')   
def update_award(request):
    try:
        update_awards = Awr_Cer.objects.latest('id') 

        if request.method == 'POST':
            
            update_awards.AC_1 = request.POST.get('AC_1')
            update_awards.AC_2 = request.POST.get('AC_2')
            update_awards.AC_3 = request.POST.get('AC_3')
            update_awards.AC_4 = request.POST.get('AC_4')
            update_awards.AC_5 = request.POST.get('AC_5')
            update_awards.AC_6 = request.POST.get('AC_6')
            update_awards.AC_7 = request.POST.get('AC_7')
            
            
            update_awards.save()

            return redirect('update_award')

        return render(request, 'edit_file/award_edit.html', {
            'image_data': Image.objects.last().image,
            
            'AC_1': update_awards.AC_1,
            'AC_2': update_awards.AC_2,
            'AC_3': update_awards.AC_3,
            'AC_4': update_awards.AC_4,
            'AC_5': update_awards.AC_5,
            'AC_6': update_awards.AC_6,
            'AC_7': update_awards.AC_7,
        })

    except About.DoesNotExist:
        return HttpResponse('No records found')
