import '../domain/movie.dart';

class MovieDummyData {
  static const List<Movie> movies = [
    Movie(
      id: 1,
      title: 'The Beekeeper',
      genre: 'Action',
      year: 2024,
      rating: 6.3,
      posterUrl: 'assets/images/beekeeper.jpg',
      overview: 'A former operative seeks justice.',
    ),
    Movie(
      id: 2,
      title: 'Wrath of Man',
      genre: 'Action, Thriller',
      year: 2021,
      rating: 7.1,
      posterUrl: 'assets/images/Wrath-of-man.jpg',
      overview: 'A mysterious security guard joins an armored truck company.',
    ),
    Movie(
      id: 3,
      title: 'John Wick',
      genre: 'Action, Thriller',
      year: 2014,
      rating: 7.4,
      posterUrl: 'assets/images/JohnWick.jpg',
      overview: 'A retired hitman returns to his old life.',
    ),
    Movie(
      id: 4,
      title: 'The Dark Knight',
      genre: 'Action, Crime',
      year: 2008,
      rating: 9.0,
      posterUrl: 'assets/images/TheDarkKnight.jpg',
      overview: 'Batman faces his greatest enemy, the Joker.',
    ),
    Movie(
      id: 5,
      title: 'Extraction',
      genre: 'Action, Thriller',
      year: 2020,
      rating: 6.8,
      posterUrl: 'assets/images/Extraction.jpg',
      overview: 'A black ops mercenary takes on a dangerous mission.',
    ),
    Movie(
      id: 6,
      title: 'Nobody',
      genre: 'Action, Crime',
      year: 2021,
      rating: 7.4,
      posterUrl: 'assets/images/Nobody.jpg',
      overview: 'An underestimated man reveals his dangerous past.',
    ),
  ];
}
