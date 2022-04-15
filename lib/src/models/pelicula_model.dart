class Peliculas {
  List<Pelicula> items = [];
   //Peliculas();

  Peliculas.fromJsonList(List <dynamic> jsonList) {
    for(var item in jsonList){
      final pelicula = Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  late bool adult;
  late String backdropPath;
  late List<int> genreIds;
  late int id;
  late String originalLanguage;
  late String originalTitle;
  late String overview;
  late double popularity;
  late String posterPath;
  late String releaseDate;
  late String title;
  late bool video;
  late double voteAverage;
  late int voteCount;

  Pelicula({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'] / 1;
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
    voteCount = json['vote_count'];
  }

  getPosterImg(){
    if(posterPath == null){
      return 'http://www.musicapopular.cult.cu/wp-content/uploads/2017/12/imagen-no-disponible.png';
    }else{
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }
}
