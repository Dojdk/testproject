import 'package:flutter/material.dart';
import 'package:testproject/widgets/followbutton.dart';

import '../models/user.dart';
import 'animatedtext.dart';

class CustomBottomSheet extends StatelessWidget {
  final User user;
  final DraggableScrollableController controller ;

  const CustomBottomSheet({super.key, required this.user, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25,
      minChildSize: 0.25,
      maxChildSize: 0.7,
      expand: true,
      snap: true,
      controller: controller,
      builder: (BuildContext context, ScrollController scrollController) =>
          Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAnimatedText(
                    textAlign: TextAlign.start,
                    text: user.followers,
                    subtext: 'followers'),
                CustomAnimatedText(
                    textAlign: TextAlign.center,
                    text: user.posts,
                    subtext: 'posts'),
                CustomAnimatedText(
                    textAlign: TextAlign.end,
                    text: user.following,
                    subtext: 'following'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomAnimatedText(
                          textAlign: TextAlign.start,
                          text: user.name,
                          subtext: user.country,
                          fontSize: 14,
                          textColor: Colors.black,
                        ),
                        FollowButton(id: user.id),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      user.bio,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Photos',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  user.images[index],
                                  fit: BoxFit.fill,
                                )),
                          ),
                          itemCount: user.images.length,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
