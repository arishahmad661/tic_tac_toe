import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tic_toc_toe/twoplayer.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:<Widget>[
          SizedBox(height:120),
          Text("Tic Toc Toe",
        style:TextStyle(color:Colors.white,fontSize: 50,fontStyle: FontStyle.normal)),
        SizedBox(height: 60),
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children:<Widget>[
        //     Text("×",
        //     style:TextStyle(
        //       color:Colors.white,
        //       fontSize: 80,
        //       )),
        //     SizedBox( width:15),
        //     Text("Ｏ",
        //     style:TextStyle(
        //       color:Colors.white,
        //       fontSize: 55)),
        //   ],
        // ),
        Container(
          alignment: Alignment.center,
          height:400,
          //width: MediaQuery.of(context).size.width,
          child: Card(
            shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(10.0)),
            child:Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height:80,width:300),
                Text("START PLAYING !",
                     style:TextStyle(
                      fontSize: 35,
                     fontWeight: FontWeight.bold,
                     color:Color.fromARGB(255, 6, 52, 70),)),
              SizedBox(height:80),
              SizedBox(width:215,
                child: RaisedButton(onPressed: ()=>{Navigator.push(context,MaterialPageRoute(builder:(context)=>TwoPlayer()))},
                color: Colors.blueGrey,
                 child: Text("START",
            style:TextStyle(
                color:Colors.white,
                fontSize: 35,
                )),),
              ),
          ]),
        ),)
      ],
      ));
  }
}


