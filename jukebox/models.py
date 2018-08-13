from django.db import models

# Create your models here.
class Genre(models.Model):
	created_at = models.DateTimeField(auto_now_add=True)
	name = models.CharField(max_length=255)
	
	def __str__(self):
		return self.name
		
class Artist(models.Model):
	created_at = models.DateTimeField(auto_now_add=True)
	band_name = models.CharField(max_length=255)
	genre = models.ForeignKey(Genre, on_delete=models.CASCADE)
	artist_cover_image = models.CharField(max_length=255, null=True)
	
	def __str__(self):
		return self.band_name
	
class Song(models.Model):
	created_at = models.DateTimeField(auto_now_add=True)
	song_name = models.CharField(max_length=255)
	video_id = models.CharField(max_length=255, null=True)
	artist = models.ForeignKey(Artist, on_delete=models.CASCADE)
	
	def __str__(self):
		return self.song_name
	
	


