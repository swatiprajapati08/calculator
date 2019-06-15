import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new CalApp(),
      theme: new ThemeData(
          primarySwatch: Colors.red
      ),);
  }
}


class CalApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CalApp> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doAddition()
  {
    num1= int.parse(t1.text);
    num2= int.parse(t2.text);
    setState(() {
      sum=num1+num2;
    });
  }
  void dosub()
  {
    num1= int.parse(t1.text);
    num2= int.parse(t2.text);
    setState(() {
     if (num1 > num2)
       sum=num1-num2;
     else
       sum=num2-num1;
    });
  }
  void domul()
  {
    num1= int.parse(t1.text);
    num2= int.parse(t2.text);
    setState(() {
      sum=num1*num2;
    });
  } void dodiv()
  {
    num1= int.parse(t1.text);
    num2= int.parse(t2.text);
    setState(() {
      sum=num1~/num2;
    });
  }
  void doclear()
  {
    setState(() {
      num1=0;num2=0;
      sum=0;
      t1.text="0";
      t2.text="0";
    });
  }
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
        backgroundColor: Colors.blue,
      ),
    body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output : $sum",
            style: new TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.purple),),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "enter number 1"),
              controller: t1,
            ),
            new TextField(
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
          hintText: "enter number 2 "),
              controller: t2,
      ),
            new Padding(padding:const EdgeInsets.all(20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new MaterialButton(
                  child: new Text("+"),
                  onPressed: doAddition,
                  color: Colors.yellowAccent,
                ),new MaterialButton(
                  child: new Text("-"),
                  onPressed: dosub,
                  color: Colors.yellowAccent,
                ),
      ]
    ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("*"),
                      onPressed: domul,
                      color: Colors.yellowAccent,
                    ),
                    new MaterialButton(
                      child: new Text("/"),
                      onPressed: dodiv,
                      color: Colors.yellowAccent,
                    ),
              ],
            ),
        new Padding(padding:const EdgeInsets.all(20.0)),
     new Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[

     new MaterialButton(
     child: new Text("Clear"),
     onPressed: doclear,
     color: Colors.red,
     )]
     )
       ],
    ),
    ),
    );
  }
}
