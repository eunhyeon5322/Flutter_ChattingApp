import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  //TextEditingController _textEditingController = TextEditingController();
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App")
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                decoration:InputDecoration (hintText: "메세지 입력창"),
                onSubmitted:  _handleSubmitted,
              ),
            ),
            SizedBox(
              width:8.0,
            ),
            TextButton(
              onPressed: () {
                _handleSubmitted(_textEditingController.text);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child:const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text){
    print(text);
    _textEditingController.clear();
  }
}

