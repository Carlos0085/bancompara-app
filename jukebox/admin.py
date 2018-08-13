from django.contrib import admin

from .models import Genre, Artist, Song

# Register your models here.

#stacked/tab como manera de desplegar
class ArtistInline(admin.StackedInline):
    model = Artist
	
	
#stacked/tab como manera de desplegar
class SongInline(admin.StackedInline):
    model = Song


#personalizar el panel de administracion
class GenreAdmin(admin.ModelAdmin):
    inlines = [ArtistInline,]
	

#personalizar el panel de administracion
class ArtistAdmin(admin.ModelAdmin):
    inlines = [SongInline,]
	


admin.site.register(Genre, GenreAdmin)

admin.site.register(Artist, ArtistAdmin)

admin.site.register(Song)