import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar'),
          //parecido al show dialog que usamos
          actions: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars1.githubusercontent.com/u/24250197?s=460&u=c99c28e125ad31490f4971eb1420605c3286e432&v=4'),
                radius: 25.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                child: Text(
                  'SL',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.purple,
              ),
            )
          ],
        ),
        body: Center(
            child: FadeInImage(
          image: NetworkImage(
              'https://avatars1.githubusercontent.com/u/24250197?s=460&u=c99c28e125ad31490f4971eb1420605c3286e432&v=4'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )));
  }
}
