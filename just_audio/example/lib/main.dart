import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../builders/JustPlayer.dart';

void main() => runApp(MaterialApp(home: PageViewDemo()));

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Center(
          child: SizedBox(
           height: 200,
            child: Container(
              color: Colors.white,
                child: JustPlayer(url:"https://testbucket777777.s3.us-east-2.amazonaws.com/27-talk-40.m4a")),
          ),
        ),
        Center(
          child: SizedBox(
            height: 200,
            child: Container(
                color: Colors.white,
                child: JustPlayer(url: "https://testbucket777777.s3.us-east-2.amazonaws.com/27-talk-43.m4a")),
          ),
        ),
        Center(
          child: SizedBox(
            height: 200,
            child: Container(
                color: Colors.white,
                child: JustPlayer(url: "https://testbucket777777.s3.us-east-2.amazonaws.com/27-talk-44.m4a")),
          ),
        ),
      ],
    );
  }
}

