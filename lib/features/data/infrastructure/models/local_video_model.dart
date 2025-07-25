import 'package:toktik/features/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"],
        videoUrl: json["videoUrl"],
        likes: json["likes"],
        views: json["views"],
      );

  Map<String, dynamic> toJson() => {
    "name": name,
    "videoUrl": videoUrl,
    "likes": likes,
    "views": views,
  };

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoURL: videoUrl, likes: likes, views: views);
}
