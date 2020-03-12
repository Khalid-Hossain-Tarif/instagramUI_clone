import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Stories',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text(
            'Watch All',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              height: 60.0,
              width: 60.0,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://isgbd.com/wp-content/uploads/2020/02/15585339_349910268722681_3809743387013954848_o.jpg"),
                ),
              ),
            ),
            index == 0 ? Positioned(
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 10.0,
                child: Icon(
                  Icons.add, size: 14.0, color: Colors.white,
                ),
              ),
            ): Container(),
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
