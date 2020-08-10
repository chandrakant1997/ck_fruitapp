import 'package:flutter/material.dart';

class FruitDetail extends StatefulWidget {

  final fruitDetail;
  FruitDetail({this.fruitDetail});

  @override
  _FruitDetailState createState() => _FruitDetailState();
}

class _FruitDetailState extends State<FruitDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(children: [
              Container(
                height: 500.0,
              ),
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(0.0),
                  ),
                  color: widget.fruitDetail.bgColor,
                ),
              ),
              Positioned(
                //top: 15.0,
                left: 2.0,
                right: 10.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white,
                          size: 20,),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Icon(Icons.lock, color: Colors.white,size: 20,),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 10.0,
                child: Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(5.0)),
                ),),
              //We need to tilt the image slightly
              Positioned(
                  top: 45.0,
                  left: 15.0,
                  right: 15.0,
                  child: Hero(
                      tag: widget.fruitDetail.imgPath,
                      child: RotationTransition(
                          turns: AlwaysStoppedAnimation(360/20),
                          child: Container(
                            height: 250.0,
                            width: 250.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(widget.fruitDetail.imgPath))),
                          )))),
              Positioned(
                top: 375.0,
                left: 15.0,
                right: 15.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(widget.fruitDetail.title,
                                  style: TextStyle(
                                    fontFamily: 'AbrilFatFace',
                                    fontSize: 20.0,
                                  )
                              ),
                              Row(
                                children: <Widget>[
                                  Text(widget.fruitDetail.price,
                                      style: TextStyle(
                                          fontFamily: 'AbrilFatFace',
                                          fontSize: 25.0,
                                          color: Colors.grey
                                      )
                                  ),
                                  Text('\\kg',
                                      style: TextStyle(
                                          fontFamily: 'AbrilFatFace',
                                          fontSize: 15.0,
                                          color: Colors.grey
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        /*  Text(widget.wineDetail.price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: widget.wineDetail.bgColor
                              )
                          )*/
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text('This is a juicy stone fruit (drupe) produced from numerous ',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          )
                      ),
                      Text('species of tropical trees belonging to the flowering plant '
                          'genus Mangifera, cultivated mostly for their edible fruit. ',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          )
                      ),
                      Text('Most of these species are found in nature as wild mangoes',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          )
                      )
                    ],
                  ),
                ),
              )
            ]),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Related items',
                                style: TextStyle(
                                  fontFamily: 'AbrilFatFace',
                                  fontSize: 20.0,
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

}