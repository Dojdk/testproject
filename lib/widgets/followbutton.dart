import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/user.dart';

class FollowButton extends StatefulWidget {
  final int id;
  const FollowButton({super.key, required this.id});
  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  late final userProvider = Provider.of<UserProvider>(context);
  @override
  Widget build(BuildContext context) {
    late final bool isFollowed = userProvider.userIsFollowed(widget.id);
    return GestureDetector(
      onTap: () {
        userProvider.toggleFollow(widget.id);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isFollowed ? 40 : 120,
        height: 40,
        decoration: BoxDecoration(
          color: isFollowed ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          border: isFollowed ? null : Border.all(color: Colors.red, width: 2),
        ),
        child: isFollowed
            ? const Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: Colors.white,
              )
            : const Center(
                child: Text(
                  'FOLLOW',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
