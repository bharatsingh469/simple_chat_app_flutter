import 'package:chat_app/Config/Images.dart';
import 'package:chat_app/Pages/Chat/Widgets/ChatBubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

//34.00

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AssetsImage.girlPic),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Riya Roy",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Online",
              style: Theme.of(context).textTheme.labelSmall,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.chatMicSvg,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    filled: false, hintText: "Type message ..."),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  AssetsImage.chatGallarySvg,
                  width: 25,
                )),
            const  SizedBox(
              width: 10,
            ),
            Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  AssetsImage.chatSendSvg,
                  width: 25,
                )),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ChatBubble(
                  message: "Hello hoe arre you",
                  imageUrl: "",
                  isComming: false,
                  status: "read",
                  time: "10:10 pm",
                ),
                ChatBubble(
                  message: "",
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/4/44/Subhas_Chandra_Bose_NRB.jpg",
                  isComming: false,
                  status: "read",
                  time: "10:10 pm",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
