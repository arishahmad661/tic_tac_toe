import 'package:flutter/material.dart';

class TwoPlayer extends StatefulWidget {
  const TwoPlayer({Key? key}) : super(key: key);
  @override
  State<TwoPlayer> createState() => _TwoPlayerState();
}

class _TwoPlayerState extends State<TwoPlayer> {
  var currentPlayer="X";
  int xwon=0;
  int owon=0;
  int draw=0;
  List a=[];
  List grid = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
  bool checkMove(a,b,c,sign){
    if(((grid[a]==grid[b])&&(grid[b]==grid[c])&&(grid[c]==sign))){
      return true;
    }
    else{
      return false;}
    }
    void counter(sign){
      if (sign=="X"){
        xwon++;
      }
      else{
        owon++;
      }
    }
    void reset(){
      grid = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
      a=[];
    }
    void findWinner(currentPlayer){
      if(((checkMove(0,1,2,currentPlayer))||(checkMove(3,4,5,currentPlayer))||(checkMove(6,7,8,currentPlayer))||
      (checkMove(0,3,6,currentPlayer))||(checkMove(1,4,7,currentPlayer))||(checkMove(2,5,8,currentPlayer))||
      (checkMove(0,4,8,currentPlayer))||(checkMove(2,4,6,currentPlayer)))){
        counter(currentPlayer);
       reset();
        }
    }
  void drawxo(i){
    if(!a.contains(i)){
      a.add(i);
      setState(() {
      grid[i]=currentPlayer;
      currentPlayer=currentPlayer=="X"?"O":"X";
    });
    findWinner(grid[i]);
    }
    if(a.length==9){
      draw++;
      reset();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height:60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Card(child:Text("X: $xwon",style: TextStyle(color:Color.fromARGB(255, 6, 52, 70),fontSize: 40),)),
              Card(child:Text("Draw: $draw",style: TextStyle(color:Color.fromARGB(255, 6, 52, 70),fontSize: 40),)),
              Card(child:Text("O: $owon",style: TextStyle(color:Color.fromARGB(255, 6, 52, 70),fontSize: 40),))
              ],
            ),
            SizedBox(height:60),
          Expanded(
              child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                      grid.length,
                      (index) => Card(
                              child: InkWell(
                                splashColor: Color.fromARGB(255, 6, 52, 70),
                            onTap: () {
                              drawxo(index);
                            },
                            child: Center(
                              child: Text(grid[index],
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 52, 70),
                                      fontSize: 50)),
                            ),
                          ))),
                ),
            ),
          ],
        ),
        );
  }
}
