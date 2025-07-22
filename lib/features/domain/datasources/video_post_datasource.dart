import 'package:toktik/features/domain/entities/video_post.dart';

abstract class VideoPostDatasource {

  Future <List<VideoPost>> getFavoriteVideosByUser(String userId);
  Future <List<VideoPost>> getTrendVideosByUser(int page);

}