import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart';
import 'features/movie/presentation/pages/app_shell_page.dart';
import 'features/movie/presentation/providers/movie_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MovieProvider())],
      child: const MovieHubApp(),
    ),
  );
}

class MovieHubApp extends StatelessWidget {
  const MovieHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MOVIEHUB',
      theme: AppTheme.darkTheme,
      home: const AppShellPage(),
    );
  }
}
