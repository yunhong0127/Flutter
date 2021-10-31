import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:test_app/chat_message.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<AnimatedListState> _animlistKey = GlobalKey<AnimatedListState>();
  TextEditingController _textEditingController = TextEditingController();

  List<String> _chats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isIOS
          ? CupertinoNavigationBar(
              middle: Text("Chat App"),
            )
          : AppBar(
              title: Text("Chat App"),
            ),
      body: Column(
        children: [
          Expanded(
              child: AnimatedList(
            key: _animlistKey,
            reverse: true,
            itemBuilder: _buildItem,
          )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            //EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Platform.isIOS
                      ? CupertinoTextField(
                          controller: _textEditingController,
                          placeholder: "메세지 입력창",
                          onSubmitted: _handleSubmitted,
                        )
                      : TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(hintText: "메세지 입력창"),
                          onSubmitted: _handleSubmitted,
                          //(String text){_handleSubmitted(text);
                          //print("onSubmitted: $text");},
                        ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Platform.isIOS
                    ? CupertinoButton(
                        child: Text("send"),
                        onPressed: () {
                          _handleSubmitted(_textEditingController.text);
                        },
                      )
                    : IconButton(
                        onPressed: () {
                          _handleSubmitted(_textEditingController.text);
                        },
                        icon: Icon(Icons.send),
                        color: Colors.amberAccent,
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(context, index, animation) {
    return ChatMessage(_chats[index], animation: animation);
  }

  void _handleSubmitted(String text) {
    //print(text);
    Logger().d(text);
    _textEditingController.clear();
    _chats.insert(0, text);
    _animlistKey.currentState.insertItem(0);
  }
}
