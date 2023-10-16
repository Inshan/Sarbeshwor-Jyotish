from rest_framework.serializers import ModelSerializer
from rest_framework import serializers
from django.contrib.auth.models import User
from .models import GlobalSettings,Navigation,ContactUS, Course, Bhetghat
from rest_framework.authtoken.views import Token


class GlobalSettingsSerializer(serializers.ModelSerializer):
  class Meta:
    model = GlobalSettings
    fields = "__all__"
    
    
class NavigationSerializer(ModelSerializer):
  class Meta:
    model = Navigation
    fields = "__all__"
    
class ContactSerializer(ModelSerializer):
  class Meta:
    model = ContactUS
    fields = ['name', 'email', 'number', 'message']
    
class CourseSerializer(ModelSerializer):
  class Meta:
    model = Course
    fields = ['name', 'email', 'address', 'gender', 'nationality', 'education','prof', 'courselevel','mobileno', 'dateofbirth']
  
class BhetghatSerializer(ModelSerializer):
  class Meta:
    model = Bhetghat
    fields = "__all__"
  receipt = serializers.FileField(required=False)

    

class UserSerializer(serializers.ModelSerializer):
      class Meta :
        model = User
        fields ="__all__"
        
        extra_kwargs = {'password':{
           'write_only':True,
           'required':True,
        }}
        
        
def create(self,validated_data):
  user = user.objects.create_user(**validated_data)
  Token.objects.create(user=user)
  return user