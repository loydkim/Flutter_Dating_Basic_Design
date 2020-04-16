import 'package:datingappmain/commons/constData.dart';
import 'package:datingappmain/commons/fullPhoto.dart';
import 'package:flutter/material.dart';

class SearchMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchMain();
}

class _SearchMain extends State<SearchMain> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
  }

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Julia, 22',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
          ),
          Text(
            'Female / 5km / 10m ago',
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20
            ),
          ),
        ],
      ),
    );
  }

  Widget textSection() {
    return Container(
      padding: const EdgeInsets.only(left:32, right: 32),
      child: Text(
        'My favorite movies are The Godfather, Harry Potter and the Prisoner of Azkaban, Toy Story, and When Harry Met Sally. I hope that wide range of movies allows you to see that there is more to me than meets the eye.',
        softWrap: true,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.fromLTRB(14,14.0,14,14),
      padding: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: Colors.white,
//        border: Border.all(color: Colors.grey[400]),
        borderRadius: BorderRadius.all(
            Radius.circular(25.0)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20.0, // has the effect of softening the shadow
            spreadRadius: 5.0, // has the effect of extending the shadow
            offset: Offset(4.0,4.0,),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: size.height - 210,
            child: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.network(user1Image,
                              height: size.height - 360,
                              fit: BoxFit.cover,
                              width: size.width,),
                          ),
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => FullPhoto(url: user1Image)));
                          },
                        ),

                        Text('\n\n\n'),
                        textSection(),
                    ],
                  ),
                  Positioned(
                      top: size.height - 420,
                      left: size.width / 2 - (size.width / 2) + size.width / 10,
                      child: Container(
                        height: 110,
                        width: size.width - 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white,//Color(0xff0F0F0F),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                              )
                            ]
                        ),
                        child: titleSection(),
                      )
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: new RawMaterialButton(
                  onPressed: () { },
                  child: new Icon(
                    Icons.clear,
                    color: Colors.black54,
                    size: 44.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
                margin: EdgeInsets.only(left: 2,right: 2, bottom: 4),
              ),
              Container(
                child: new RawMaterialButton(
                  onPressed: () { },
                  child: new Icon(
                    Icons.sentiment_satisfied,
                    color: Colors.white,
                    size: 44.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.redAccent,
                  padding: const EdgeInsets.all(15.0),
                ),
                margin: EdgeInsets.only(left: 2,right: 2, bottom: 4),
              ),
            ],
          )
        ],
      ),
    );
  }
}