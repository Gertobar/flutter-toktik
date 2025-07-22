import 'package:flutter/material.dart';
import 'package:toktik/features/domain/video_post.dart';
import 'package:toktik/features/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/features/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            //Video Plater + gradiante
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoURL,
              )
            ),


            // botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost ,
              ))
          ],
        );
      },
    );
  }
}

