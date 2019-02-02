import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      padding: EdgeInsets.only(top: 40.0, left: 10.0),
      child: Column(children: <Widget>[
      Row(children: <Widget>[
      Expanded(child: Text("Margarita", 
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        decoration: TextDecoration.none,
        fontFamily: 'Muli',
        fontWeight: FontWeight.w300,
      ),),),
      Expanded(child: Text("Tomato, Mozzarella, Basil", 
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 10.0,
        color: Colors.white,
        decoration: TextDecoration.none,
        fontFamily: 'Muli',
        fontWeight: FontWeight.w300,
      ),))],),
      Row(children: <Widget>[
      Expanded(child: Text("Maninara", 
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        decoration: TextDecoration.none,
        fontFamily: 'Muli',
        fontWeight: FontWeight.w300,
      ),),),
      Expanded(child: Text("Tomato, Garlic, Onion", 
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 10.0,
        color: Colors.white,
        decoration: TextDecoration.none,
        fontFamily: 'Muli',
        fontWeight: FontWeight.w300,
      ),)),
      ]
    ) ,
    PizzaImageWidget(),
    OrderButton(),
    TimeWidget(),
    ], 
    )));
  }
}

class PizzaImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.png');
    Image image = Image(image: pizzaAsset, width: 400.0, height: 300.0);
    return Container(child: image,);
  }
}

class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0, bottom: 80.0),
      child: RaisedButton(
        child: Text("Order for Pizza"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    ); 
    return button;  
  }
  void order(BuildContext context){
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
      );
      showDialog(
        context: context,
        builder: (BuildContext context) => alert,
      );
  }
}

class TimeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var text = Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white, 
            fontSize: 12.0),
            textAlign: TextAlign.end,
            
        );
    return Container(child: text,);
  }

    String sayHello(){
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    if (hour < 12){
      hello = 'Good morning';}
    else if(hour < 18){
      hello = 'Good afternoon';
    }else{
      hello = 'Good evening';
    }

  String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();
    return "It's now "+  hour.toString() + ":" + minutes + ". " + hello;
  }
  }
