from django.shortcuts import get_object_or_404, render
from django.core import serializers
from django.http import HttpResponse

from .models import Song, Genre, Artist

# Create your views here.
def songs_list(request):
	songs = Song.objects.all()
	return render(request, 'songs_list.html',{'songs': songs})

def songs_collage(request):
	songs = Song.objects.all()
	return render(request, 'songs_collage.html',{'songs': songs})
	
def recommendedSongs(request):
	genres = Genre.objects.all()
	return render(request, 'recommended.html',{'genres': genres})
	
	
def getAllGenres(request):
	genres = Genre.objects.all()
	data = serializers.serialize('json', genres)
	return HttpResponse(data, content_type='application/json')
    #return render(request, 'songs_collage.html',{'songs': songs})

def getArtistByGenre(request, pk):
	artists = Artist.objects.all().filter(genre= pk)
	#artists = get_object_or_404(Artist, genre= pk)
	data = serializers.serialize('json', artists)
	return HttpResponse(data, content_type='application/json')
	#return render(request, 'courses/course_detail.html', {'course': course})
	
def getSongByArtist(request, pk):
	songs = Song.objects.all().filter(artist= pk)
#	songs = get_object_or_404(Artist, pk=pk)
	data = serializers.serialize('json', songs)
	return HttpResponse(data, content_type='application/json')
	

