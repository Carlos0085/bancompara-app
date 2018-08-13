from django.conf.urls import url
from django.urls import include
from django.contrib import admin

from . import views

urlpatterns = [
	url(r'^admin/', admin.site.urls),
    url(r'^jukebox/', include('jukebox.urls', namespace='jukebox' )),
    #url(r'^admin/', admin.site.urls),
    url(r'^$', views.hello_world, name='home'),
]