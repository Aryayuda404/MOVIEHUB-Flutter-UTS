import 'package:flutter/material.dart';

import '../../data/movie_dummy_data.dart';
import '../../domain/movie.dart';

class MovieProvider extends ChangeNotifier {
  // Daftar semua film
  final List<Movie> _movies = MovieDummyData.movies;

  // Kata pencarian
  String _searchQuery = '';

  // Daftar ID film favorit
  final Set<int> _favoriteIds = {};

  // Mengambil semua film
  List<Movie> get movies => _movies;

  // Mengambil film favorit
  List<Movie> get favoriteMovies {
    return _movies.where((movie) => _favoriteIds.contains(movie.id)).toList();
  }

  // Mengambil film berdasarkan pencarian
  List<Movie> get filteredMovies {
    if (_searchQuery.isEmpty) {
      return _movies;
    }

    return _movies.where((movie) {
      return movie.title.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();
  }

  // Mengubah kata pencarian
  void searchMovies(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  // Memeriksa status favorite
  bool isFavorite(int movieId) {
    return _favoriteIds.contains(movieId);
  }

  // Menambahkan atau menghapus favorite
  void toggleFavorite(int movieId) {
    if (_favoriteIds.contains(movieId)) {
      _favoriteIds.remove(movieId);
    } else {
      _favoriteIds.add(movieId);
    }

    notifyListeners();
  }
}
