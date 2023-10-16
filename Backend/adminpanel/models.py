from django.db import models
from datetime import datetime
from django.utils import timezone


# from django.utils import timezone


class GlobalSettings(models.Model):
    Sitename = models.CharField(max_length=100)
    Sitecontact = models.CharField(max_length=100)
    Siteemail = models.EmailField()
    Siteaddress = models.CharField(max_length=500)
    Sitedescription = models.CharField(max_length=500)
    Siteaddress1 = models.CharField(max_length=300)
    Sitecontactdetail = models.CharField(max_length=300)
    Siteaddress2 = models.CharField(max_length=300)
    Sitefacebooklink = models.CharField(max_length=300)
    Siteyoutubelink = models.CharField(max_length=300)
    Sitetwitterlink = models.CharField(max_length=300, default=" ")
    Sitelink1 = models.CharField(max_length=300, default=" ")
    Sitelink2 = models.CharField(max_length=300, default=" ")
    Sitelink3 = models.CharField(max_length=300, default=" ")
    Sitelink4 = models.CharField(max_length=300, default=" ")
    Sitelink5 = models.CharField(max_length=300, default=" ")
    Sitebox = models.CharField(max_length=300, null=True)
    logo = models.ImageField(
        upload_to="Global/", max_length=200, null=True, default=None
    )
    back_image = models.ImageField(upload_to="Global/", null=True)
    brochure = models.FileField(upload_to="brochure/", null=True)
    brochure_name = models.CharField(max_length=100, null=True)

    def __str__(self):
        return self.Sitename


class ContactUS(models.Model):
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    number = models.CharField(default="", max_length=50)
    message = models.TextField(null=True)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
    
    


class Navigation(models.Model):
    PAGE_TYPE = (
        ("Home", "Home"),
        ("Aboutus", "Aboutus"),
        ("Portfolio", "Portfolio"),
        ("Profile", "Profile"),
        ("Service", "Service"),
        ("ServiceData", "ServiceData"),
        ("Course", "Course"),
        ("Aboutus", "Aboutus"),
        ("Banner", "Banner"),
        ("BannerData", "BannerData"),
        ("CourseHome", "CourseHome"),
        ("LatestNews", "LatestNews"),
        ("LatestNewsData", "LatestNewsData"),
        ("ServiceHome", "ServiceHome"),
        ("ServiceHomeData", "ServiceHomeData"),
        ("Appointment", "Appointment"),
        ("Appointment1", "Appointment1"),
        ("Testimonial", "Testimonial"),
        ("TestimonialData", "TestimonialData"),
        ("DailyRashifal", "DailyRashifal"),
        ("WeeklyRashifal", "WeeklyRashifal"),
        ("MonthlyRashifal", "MonthlyRashifal"),
        ("YearlyRashifal", "YearlyRashifal"),
        ("DailyRashifalHome", "DailyRashifalHome"),
        ("WeeklyRashifalHome", "WeeklyRashifalHome"),
        ("MonthlyRashifalHomeHome", "MonthlyRashifalHomeHome"),
        ("YearlyRashifal", "YearlyRashifal"),
        ("Group", "Group"),
        ("Contact", "Contact"),
        ("SarbeswarJyotish", "SarbeswarJyotish"),
        ("MahadevJyotish", "MahadevJyotish"),
        ("HariJyotish", "HariJyotish"),
        ("PashupatiJyotish", "PashupatiJyotish"),
        ("GuruJyotish", "GuruJyotish"),
        ("OmJyotish", "OmJyotish"),
        ("Photo", "Photo"),
        ("PhotoData", "PhotoData"),
        ("Video", "Video"),
        ("VideoData", "VideoData"),
    )

    STATUS = (("Publish", "Publish"), ("Draft", "Draft"))

    name = models.CharField(max_length=100, null=False)
    caption = models.CharField(max_length=100)
    status = models.CharField(choices=STATUS, max_length=50)
    position = models.IntegerField()
    page_type = models.CharField(
        choices=PAGE_TYPE, null=True, blank=True, max_length=50
    )
    title = models.CharField(max_length=1000)
    short_desc = models.TextField(null=True)
    desc = models.TextField(null=True)
    desc1 = models.TextField(null=True)
    bannerimage = models.ImageField(upload_to="about/", null=True)
    meta_title = models.CharField(max_length=100, null=True)
    meta_keyword = models.CharField(max_length=100, null=True)
    icon_image = models.TextField(null=True)
    slider_image = models.ImageField(upload_to="about/", null=True)
    Parent = models.ForeignKey(
        "self", related_name="childs", on_delete=models.CASCADE, null=True, blank=True
    )
    brochure = models.FileField(upload_to="brochure/", null=True)
    video_file = models.FileField(upload_to="videos/", default="")
    photodate = models.DateField(auto_now_add=True, null=True)
    timestamp = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return self.name


class Course(models.Model):
    gender_type = (
        ("Male", "Male"),
        ("Female", "Female"),
        ("Others", "Others"),
    )

    courselevel_type = (
        ("Course1", "Course1"),
        ("Course2", "Course2"),
        ("Course3", "Course3"),
        ("Course4", "Course4"),
        ("Course5", "Course5"),
        ("Course6", "Course6"),
        ("Course7", "Course7"),
    )

    name = models.CharField(max_length=300)
    address = models.CharField(max_length=300)
    gender = models.CharField(choices=gender_type, max_length=50, null=True, blank=True)
    dateofbirth = models.DateField()
    mobileno = models.CharField(max_length=50)
    email = models.CharField(max_length=300)
    education = models.CharField(max_length=100)
    prof = models.CharField(max_length=100)
    courselevel = models.CharField(
        choices=courselevel_type, max_length=150, null=True, blank=True)
    nationality = models.CharField(max_length=100)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name


class Bhetghat(models.Model):
    gender_type = (
        ("Male", "Male"),
        ("Female", "Female"),
        ("Others", "Others"),
    )

    timeofday_type = (
        ("Morning", "Morning"),
        ("Afternoon", "Afternoon"),
        ("Evening", "Evening"),
    )

    waytoreach_type=(
        ('Phone', 'phone'),
        ('Email', 'email'),
    )

    name = models.CharField(max_length=300)
    email = models.CharField(max_length=300)
    mobileno = models.CharField(max_length=50)
    wvno = models.CharField(max_length=50, null=True)
    timeofday=models.CharField(choices=timeofday_type, max_length=100, null=True, blank=True)
    waytoreach=models.CharField(choices=waytoreach_type, max_length=100, null=True, blank=True)
    preferreddate = models.DateField()
    gender = models.CharField(choices=gender_type, max_length=50, null=True, blank=True)
    address = models.CharField(max_length=100)
    message = models.CharField(max_length=100)
    receipt = models.FileField(null=True, blank=True)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
