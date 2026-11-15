class Movie {
  final int id;
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String posterUrl;
  final String overview;

  const Movie({
    required this.id,
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.posterUrl,
    required this.overview,
  });
}
