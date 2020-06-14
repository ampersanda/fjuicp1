import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // TODO(lucky): refactor Widget
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          title: Image.asset(
            'assets/instagram.png',
            width: 120.0,
          ),
          leading: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Icon(
                    Icons.mail_outline,
                    color: Colors.black,
                  ),
                  Positioned(
                    top: -4.0,
                    right: -4.0,
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(16.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: storyBuilder,
          separatorBuilder: storySeparatorBuilder,
          itemCount: 15,
        ),
      ),
    );
  }

  Widget storySeparatorBuilder(BuildContext context, int index) {
    return SizedBox(width: 16.0);
  }

  Widget storyBuilder(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        Container(
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4.0),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text('Your Story')
      ],
    );
  }
}
