import 'package:ck_fruitapp/fruitDetails.dart';
import 'package:ck_fruitapp/model.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final fruitBrands = fruits;
  final recommendList = recommendFruits;

  final type = catego;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
          Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 15.0,
              child: Container(
                padding: EdgeInsets.only(left: 18.0, right: 15.0),
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.grey,
                      ),
                    ]),
              ),),
            Positioned(
              top: 15.0,
              child: Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10.0,),
                      Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                    ]),
              ),),
            Positioned(
              top: 15.0,
              right: 15.0,
              child: Container(
                height: 10.0,
                width: 10.0,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5.0)),
                /*child: Center(
                    child: Text('1',
                        style: TextStyle(fontSize: 7.0, color: Colors.white))),*/
              ),),
            SizedBox(height: 55.0),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:50.0,left: 18.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.25,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.amber,
                        image: new DecorationImage(
                          image: ExactAssetImage('image/images.jpg'),
                          fit: BoxFit.fitHeight,

                        ),
                      )),
                ),
              ],
            ),
            Positioned(
              top: 240.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 18.0, right: 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Categories',
                            style: TextStyle(
                                fontFamily: 'AbrilFatFace', fontSize: 18.0)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container( height: 22.0,
                            width: 70.0,decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular( 8.0),
                                bottomRight: Radius.circular(8.0),
                                // bottomLeft: Radius.circular( 10.0)
                              ),
                            ),
                            child: FlatButton(child:
                            Center(
                              child: Text("Explore All",style: TextStyle
                                (fontSize: 8.0,
                              ),),
                            ),
                              onPressed: () => {},),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                        height: 275.0,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: type.map((categos) {
                              return _typecast(categos);
                            }).toList()))
                  ],
                ),
              ),
            ),
            Positioned(
              top: 400.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 18.0, right: 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Top products',
                            style: TextStyle(
                                fontFamily: 'AbrilFatFace', fontSize: 18.0)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container( height: 22.0,
                            width: 70.0,decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular( 8.0),
                                bottomRight: Radius.circular(8.0),
                                // bottomLeft: Radius.circular( 10.0)
                              ),
                            ),
                            child: FlatButton(child:
                            Center(
                              child: Text("Explore All",style: TextStyle
                                (fontSize: 8.0,
                              ),),
                            ),
                              onPressed: () => {},),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 10.0),
                    /*Padding(
                      padding: const EdgeInsets.all(15.0),*/
                    Stack(children: <Widget>[
                      Container(
                        height: 275.0,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: recommendList.map((wine) {
                              return _buildCard(wine);
                            }).toList()),
                      ),
                    ],

                    ),
                    //  )
                  ],
                ),
              ),
            ),
          ]),
        ]));
  }

  Widget _typecast(categos)
  {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FruitDetail(fruitDetail:
                  categos)));
            },
            child: Stack(children: <Widget>[
              Container(
                width: 65.0,
                height: 120.0,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular( 10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular( 10.0)
                  ),

                  // border:Border.all(color: Colors.white,width:1),
                ),

                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 70.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(categos.imgPath),
                                fit: BoxFit.contain),
                            color: categos.bgColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular( 10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Text(categos.title,style: TextStyle
                                  (color: Colors.black,fontWeight:
                                FontWeight.w500,fontSize:13),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ])));
  }

  Widget _buildCard(wine) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FruitDetail(fruitDetail: wine)));
          },
         /* child: Container(
              width: 120.0,
             height: 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                 color: Colors.amberAccent),*/
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 160.0,
                    width: 120.0,//uper container
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                        color: wine.bgColor),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Hero(
                          tag: wine.imgPath,
                          child: Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(wine.imgPath),
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)))))),
                  Positioned(
                    //top: 0.0,
                    left: 96.0,
                    child:Container(
                      height: 22,
                      width: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(0.0),
                          ),
                          color: Colors.white38),
                     child: Center(
                       child: Icon(Icons.add,color: Colors.black38,size:
                       20,),
                     ),
                    ),
                  ),
                  Positioned(
                    top: 20.0,
                    left: 96.0,
                    child:Container(
                      height: 22,
                      width: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Colors.white38),
                      child: Center(
                        child: Icon(Icons.remove,color: Colors.black38,size:
                        20,),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 132.0,
                    left: 96.0,
                    child:Container(
                      height: 28,
                      width: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)
                          ),
                          color: Colors.white38),
                      child: Center(
                        child: Icon(Icons.favorite_border,color: Colors.black38,size:
                        20,),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 125.0,
                      left: 10.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(wine.title,
                              style: TextStyle(
                                fontFamily: 'AbrilFatFace',
                                fontSize: 10.0,
                              )),
                          SizedBox(height: 5.0),
                          Text(wine.price,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ))
                ],
              )
         // )
      ),
    );
  }
}









