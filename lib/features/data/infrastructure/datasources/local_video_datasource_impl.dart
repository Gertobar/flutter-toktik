import 'package:toktik/features/data/infrastructure/models/local_video_model.dart';
import 'package:toktik/features/domain/datasources/video_post_datasource.dart';
import 'package:toktik/features/domain/entities/video_post.dart';
import 'package:toktik/features/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {

    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendVideosByUser(int page)  async{


    await Future.delayed(const Duration(seconds: 2));

        final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

        return newVideos;
  }

}