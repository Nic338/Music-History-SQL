--select Artist.ArtistName
--from Artist
--JOIN Album on Artist.Id = Album.ArtistId
--JOIN Genre on Album.GenreId = Genre.Id	
--where Genre.Name in ('JAZZ','ROCK');

--select Album.Title
--from Album
--where Album.AlbumLength = 0;


--select *
--from Artist


--select Album.Title, Song.Title, Artist.ArtistName
--from Album
--left join Song on Album.Id = Song.AlbumId
--left join Artist on Album.ArtistId = Artist.Id
--where Album.ArtistId = 28;

--select *
--from Song

--select *
--from Album

--select Album.Title, Count(Song.Id) as SongCount
--from Album
--left join Song on Album.id = song.AlbumId
--group by Album.id, Album.Title;

--select Artist.ArtistName, Count(Song.Id) as 'Number of Songs'
--from Artist
--left join Song on Artist.id = Song.ArtistId
--group by Artist.Id, Artist.ArtistName;

--select Genre.Name, Count(Song.Id) as 'Song Count'
--from Genre
--left join Song on Genre.id = song.GenreId
--group by Genre.id, Genre.Name;

--select Artist.ArtistName, Count(distinct Album.Label) as 'Number of Labels'
--from Artist
--join Album on Artist.Id = Album.ArtistId
--group by Artist.ArtistName
--having Count(distinct Album.Label) > 1;

--select top 1 Album.Title, Max(Album.AlbumLength) as Duration
--from Album
--group by Album.Title
--order by Max(Album.AlbumLength) desc;

--select top 1 Song.Title, Max(Song.SongLength) as Duration, Album.Title as AlbumTitle
--from Song
--join Album on Album.Id = Song.AlbumId
--group by Song.Title, Album.Title
--order by Max(Song.SongLength) desc;

--select *
--from Song s
--join Album al on al.Id = s.AlbumId
--where s.AlbumId is null
