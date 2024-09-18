import 'package:dating_app_ui/model/story_user.dart';
import 'package:dating_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: stories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          StoryUser story = stories[index];

          if (index == 0) {
            return _buildMyStory(story);
          } else {
            return _buildFriendStory(story);
          }
        },
      ),
    );
  }

  Widget _buildMyStory(StoryUser story) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  story.imagePath,
                  height: 64,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: const BoxDecoration(
                        color: AppColors.secondary1, shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/svgs/plus.svg",
                      height: 8,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            story.name,
            style: const TextStyle(
                fontFamily: "Hellix",
                fontSize: 14,
                color: AppColors.black,
                height: 1.4),
          )
        ],
      ),
    );
  }

  Widget _buildFriendStory(StoryUser story) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                  color: AppColors.secondary1,
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignCenter),
            ),
            child: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: ClipOval(
                child: Image.asset(
                  story.imagePath,
                  height: 56,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            story.name,
            style: const TextStyle(
                fontFamily: "Hellix", fontSize: 14, color: AppColors.black),
          )
        ],
      ),
    );
  }
}
