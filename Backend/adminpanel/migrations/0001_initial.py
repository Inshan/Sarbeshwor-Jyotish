# Generated by Django 4.2.2 on 2023-10-05 10:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Bhetghat',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=300)),
                ('email', models.CharField(max_length=300)),
                ('mobileno', models.CharField(max_length=50)),
                ('wvno', models.CharField(max_length=50, null=True)),
                ('timeofday', models.CharField(blank=True, choices=[('Morning', 'Morning'), ('Afternoon', 'Afternoon'), ('Evening', 'Evening')], max_length=100, null=True)),
                ('waytoreach', models.CharField(blank=True, choices=[('Phone', 'phone'), ('Email', 'email')], max_length=100, null=True)),
                ('preferreddate', models.DateField()),
                ('gender', models.CharField(blank=True, choices=[('Male', 'Male'), ('Female', 'Female'), ('Others', 'Others')], max_length=50, null=True)),
                ('address', models.CharField(max_length=100)),
                ('message', models.CharField(max_length=100)),
                ('receipt', models.FileField(blank=True, null=True, upload_to='')),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='ContactUS',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('email', models.CharField(max_length=50)),
                ('number', models.CharField(default='', max_length=50)),
                ('message', models.TextField(null=True)),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Course',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=300)),
                ('address', models.CharField(max_length=300)),
                ('gender', models.CharField(blank=True, choices=[('Male', 'Male'), ('Female', 'Female'), ('Others', 'Others')], max_length=50, null=True)),
                ('dateofbirth', models.DateField()),
                ('mobileno', models.CharField(max_length=50)),
                ('email', models.CharField(max_length=300)),
                ('education', models.CharField(max_length=100)),
                ('prof', models.CharField(max_length=100)),
                ('courselevel', models.CharField(blank=True, choices=[('Basics', 'Basics'), ('Advance', 'Advance'), ('Karmakanda', 'Karmakanda'), ('Vastu', 'Vastu'), ('Hastarekha', 'Hastarekha')], max_length=150, null=True)),
                ('nationality', models.CharField(max_length=100)),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='GlobalSettings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Sitename', models.CharField(max_length=100)),
                ('Sitecontact', models.CharField(max_length=100)),
                ('Siteemail', models.EmailField(max_length=254)),
                ('Siteaddress', models.CharField(max_length=500)),
                ('Sitedescription', models.CharField(max_length=500)),
                ('Siteaddress1', models.CharField(max_length=300)),
                ('Sitecontactdetail', models.CharField(max_length=300)),
                ('Siteaddress2', models.CharField(max_length=300)),
                ('Sitefacebooklink', models.CharField(max_length=300)),
                ('Siteyoutubelink', models.CharField(max_length=300)),
                ('Sitetwitterlink', models.CharField(default=' ', max_length=300)),
                ('Sitelink1', models.CharField(default=' ', max_length=300)),
                ('Sitelink2', models.CharField(default=' ', max_length=300)),
                ('Sitelink3', models.CharField(default=' ', max_length=300)),
                ('Sitelink4', models.CharField(default=' ', max_length=300)),
                ('Sitelink5', models.CharField(default=' ', max_length=300)),
                ('Sitebox', models.CharField(max_length=300, null=True)),
                ('logo', models.ImageField(default=None, max_length=200, null=True, upload_to='Global/')),
                ('back_image', models.ImageField(null=True, upload_to='Global/')),
                ('brochure', models.FileField(null=True, upload_to='brochure/')),
                ('brochure_name', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Navigation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('caption', models.CharField(max_length=100)),
                ('status', models.CharField(choices=[('Publish', 'Publish'), ('Draft', 'Draft')], max_length=50)),
                ('position', models.IntegerField()),
                ('page_type', models.CharField(blank=True, choices=[('Home', 'Home'), ('Aboutus', 'Aboutus'), ('Portfolio', 'Portfolio'), ('Profile', 'Profile'), ('Service', 'Service'), ('ServiceData', 'ServiceData'), ('Course', 'Course'), ('Aboutus', 'Aboutus'), ('Banner', 'Banner'), ('BannerData', 'BannerData'), ('CourseHome', 'CourseHome'), ('LatestNews', 'LatestNews'), ('LatestNewsData', 'LatestNewsData'), ('ServiceHome', 'ServiceHome'), ('ServiceHomeData', 'ServiceHomeData'), ('Appointment', 'Appointment'), ('Appointment1', 'Appointment1'), ('Testimonial', 'Testimonial'), ('TestimonialData', 'TestimonialData'), ('DailyRashifal', 'DailyRashifal'), ('WeeklyRashifal', 'WeeklyRashifal'), ('MonthlyRashifal', 'MonthlyRashifal'), ('YearlyRashifal', 'YearlyRashifal'), ('DailyRashifalHome', 'DailyRashifalHome'), ('WeeklyRashifalHome', 'WeeklyRashifalHome'), ('MonthlyRashifalHomeHome', 'MonthlyRashifalHomeHome'), ('YearlyRashifal', 'YearlyRashifal'), ('Group', 'Group'), ('Contact', 'Contact'), ('SarbeswarJyotish', 'SarbeswarJyotish'), ('MahadevJyotish', 'MahadevJyotish'), ('HariJyotish', 'HariJyotish'), ('PashupatiJyotish', 'PashupatiJyotish'), ('GuruJyotish', 'GuruJyotish'), ('OmJyotish', 'OmJyotish'), ('Photo', 'Photo'), ('PhotoData', 'PhotoData'), ('Video', 'Video'), ('VideoData', 'VideoData')], max_length=50, null=True)),
                ('title', models.CharField(max_length=1000)),
                ('short_desc', models.TextField(null=True)),
                ('desc', models.TextField(null=True)),
                ('bannerimage', models.ImageField(null=True, upload_to='about/')),
                ('meta_title', models.CharField(max_length=100, null=True)),
                ('meta_keyword', models.CharField(max_length=100, null=True)),
                ('icon_image', models.TextField(null=True)),
                ('slider_image', models.ImageField(null=True, upload_to='about/')),
                ('brochure', models.FileField(null=True, upload_to='brochure/')),
                ('video_file', models.FileField(default='', upload_to='videos/')),
                ('photodate', models.DateField(default='2012-12-12')),
                ('Parent', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='childs', to='adminpanel.navigation')),
            ],
        ),
    ]
