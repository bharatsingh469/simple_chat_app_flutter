import 'package:chat_app/Config/Images.dart';
import 'package:chat_app/Pages/HomePage/Widget/ChatTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
            onTap: () {
              Get.toNamed("/chatPage");
            },
            child: ChatTile(
              imageUrl: AssetsImage.girlPic,
              name: "Riya Sharma",
              lastChat: "Pick the call..",
              lastTime: "08:30 PM",
            )),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Vikram Singh",
          lastChat: "Ram Ram ji ",
          lastTime: "06:30 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "Riya Sharma",
          lastChat: "Pick the call..",
          lastTime: "08:30 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Vikram Singh",
          lastChat: "Ram Ram ji ",
          lastTime: "06:30 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "Riya Sharma",
          lastChat: "Pick the call..",
          lastTime: "08:30 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Vikram Singh",
          lastChat: "Ram Ram ji ",
          lastTime: "06:30 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "Riya Sharma",
          lastChat: "Pick the call..",
          lastTime: "08:30 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Vikram Singh",
          lastChat: "Ram Ram ji ",
          lastTime: "06:30 PM",
        ),
      ],
    );
  }
}
