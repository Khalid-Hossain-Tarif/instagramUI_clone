import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context, index)=> index == 0 ? SizedBox(
          child: InstaStories(

          ),
          height: deviceSize.height * 0.23,
        ): Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            //1st Row
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage("https://isgbd.com/wp-content/uploads/2020/02/15585339_349910268722681_3809743387013954848_o.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Khalid Hossain',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert,
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ),

            //2nd Row
            Flexible(
              fit: FlexFit.loose,
              child: Image.network(
                  "https://isgbd.com/wp-content/uploads/2020/02/15585339_349910268722681_3809743387013954848_o.jpg",
                  fit: BoxFit.fill,
              ),
            ),

            //3rd Row
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.heart,
                        ),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.comment,
                        ),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.paperPlane,
                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.bookmark,
                      ),
                      onPressed: null
                  ),
                ],
              ),
            ),

            //4th Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Liked By Momen, Rony and 5003 Others',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),

            //5th Row
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://isgbd.com/wp-content/uploads/2020/02/15585339_349910268722681_3809743387013954848_o.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write a comment...'
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
    );
  }
}
