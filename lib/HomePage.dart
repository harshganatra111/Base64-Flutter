import 'package:Base64/Decoder.dart';
import 'package:flutter/material.dart';
import 'Encoder.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Base 64"),
        backgroundColor: Color.fromRGBO(0 , 0, 55, 1.0),
      
      ),
      body: Center(
        
        child: Column(
          
          children: <Widget>[
            Image(image: AssetImage('images/logo.jpg')),
            Divider(),
            new SizedBox(
              width: 200.0,
              height: 100.0,
              child: new RaisedButton(
                
                child: new Text('Encoder'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Encoder();
                  }));
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10),),
            new SizedBox(
              width: 200.0,
              height: 100.0,
              child: new RaisedButton(
                child: new Text('Decoder'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Decoder();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}