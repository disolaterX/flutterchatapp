import 'package:flutter/material.dart';
import 'chat_message.dart';

class chatScreen extends StatefulWidget {
  @override
  chatScreenState createState() => chatScreenState();
}

class chatScreenState extends State<chatScreen> {
  @override
  final TextEditingController _textController = new TextEditingController();
  final List<chatMessage> _messages = <chatMessage> [];

  void _handleSubmitted(String text) {
    _textController.clear();
    chatMessage message = new chatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(color: Colors.green),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: "Send A Message"),
                controller: _textController,
                onSubmitted: _handleSubmitted,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Flexible(
            child: new ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_,index)=> _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(
            height: 1.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor
            ),
            child: _textComposerWidget()
          )
        ],
      );
  }
}
