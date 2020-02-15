import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "My first App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(title: Text("Keerthi's Application"), backgroundColor: Colors.blueGrey,)
          ,body: Center(child: Container(
          alignment: Alignment.center,
            color: Colors.white,
            //width: 200.0,
            //height: 100.0,
            //margin: EdgeInsets.all(15.0),

            child:

            Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(child: Text(
                    "Sun",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),

                Expanded(child: Text(
                    "King",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),
              ],),

              Row(children: <Widget>[
                Expanded(child: Text(
                    "Moon",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),

                Expanded(child: Text(
                    "Queen",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),
              ],),


              Row(children: <Widget>[
                Expanded(child: Text(
                    "Mars",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),

                Expanded(child: Text(
                    "Minister",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),
              ],),

              Row(children: <Widget>[
                Expanded(child: Text(
                    "Mercury",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),

                Expanded(child: Text(
                    "Prince",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),
              ],),


              Row(children: <Widget>[
                Expanded(child: Text(
                    "Jupiter",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),

                Expanded(child: Text(
                    "",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),
              ],),


              Row(children: <Widget>[
                Expanded(child: Text(
                    "Mars",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),

                Expanded(child: Text(
                    "Wonderful Planet, Courage, Strong Will, Brave",
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black45,
                    ))),
              ],), ImageAsset(),
              BookButton()
            ],),)
    ),));
  }
}


class ImageAsset extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/icon.png');
    Image image = Image(image: assetImage);
    return Container(child: image,);
  }
}


class BookButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text("Book your flight", style: TextStyle(fontSize: 20.0, color: Colors.lightGreenAccent),),
        elevation: 6.0,
        onPressed: (){
                bookFlight(context);
        }),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(title: Text("Flight Booked successfully"),
      content: Text("Have a pleasant flight"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        }
    );
  }
}