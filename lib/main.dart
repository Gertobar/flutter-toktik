import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/features/data/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik/features/data/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:toktik/features/presentation/providers/discover_provider.dart';
import 'package:toktik/features/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostRepository = VideoPostRepositoryImpl(
      videosDatasource: LocalVideoDatasourceImpl()
      );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (context) => DiscoverProvider(videosRepository: videoPostRepository)..loadNextPage()),
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}