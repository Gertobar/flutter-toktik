import 'package:toktik/features/domain/datasources/video_post_datasource.dart';
import 'package:toktik/features/domain/entities/video_post.dart';
import 'package:toktik/features/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendVideosByUser(int page) {
    return videosDatasource.getTrendVideosByUser(page);
  }
}
