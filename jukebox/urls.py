from django.conf.urls import url
from django.shortcuts import render

from . import views

# Create your views here.
app_name = 'jukebox'

urlpatterns = [
	url(r'^collage/', views.songs_collage, name='songs_collage'),
	url(r'^recommended/', views.recommendedSongs, name='recommended_songs'),
	url(r'^genre/(?P<pk>\d+)/$', views.getArtistByGenre, name='artists_genre'),
	url(r'^artist/(?P<pk>\d+)/$', views.getSongByArtist, name='song_artist'),
	url(r'^genres/', views.getAllGenres, name='all_genres'),
    url(r'^$', views.songs_list, name='songs_list'),
]