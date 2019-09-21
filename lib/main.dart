
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'small project',
      //first outer most container
      home:Stack(
        children: <Widget>[


        ListView(
          children: <Widget>[
              Container(
                height: 600,
         decoration: BoxDecoration(color:Color.fromRGBO(144, 59, 251, 1), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
         child: Column(
           children: <Widget>[


             //second outer most container
             Container(
               alignment: Alignment.centerLeft,
                decoration: BoxDecoration(color:Color.fromRGBO(111, 110, 230, 1), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
                height:450,
                child: Column(
                  children: <Widget>[
                    //
                    //third outermost container
                    //
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(color:Color.fromRGBO(82, 181, 240, 1), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
                      height:300,
                      child: Column(
                        children: <Widget>[
                          //
                          //forth outermost child
                          //
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(color:Colors.black, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
                            height:150,
                            child:Row(
                              //this row contains three containers each having a column child
                              //the column child contains a container having a floatingactionbutton and a center widget holding text.
                              //the container is given a padding and a background color which servers as the circle
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              
                
                               children: <Widget>[
                                 Container(
                                   child:Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       Container(
                                      
                                         child:  FloatingActionButton(onPressed:()=>{print('button pressed')},backgroundColor: Colors.black ,
                                            child: Icon(Icons.favorite_border, size:24, color:Colors.white)),
                                         padding: EdgeInsets.all(1),
                                         decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(75))
                                       ),

                                       Center(child: Text("HEALTH",style: TextStyle(color:Colors.white,fontSize: 13,decorationStyle: TextDecorationStyle.wavy,decorationColor: Colors.black),))
                                       
                                     ],
                                   ) ,)
                                 ,
                                 
                                 
                                  Container(
                                   child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       Container(
                                         child:  FloatingActionButton(onPressed:()=>{print('button pressed')},backgroundColor: Colors.black ,child: Icon(Icons.headset, size:24, color:Colors.lightBlueAccent)),
                                         padding: EdgeInsets.all(1),
                                         decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(75))
                                       ),


                                        Center(child: Text("MUSIC",style: TextStyle(color:Colors.white,fontSize: 13,decorationStyle: TextDecorationStyle.wavy,decorationColor: Colors.black),))
                                     ],
                                   ) ,)
                                 ,


                                  Container(
                                   child:Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       Container(
                                         child:  FloatingActionButton(onPressed:()=>{print('button pressed')},backgroundColor: Colors.black ,child: Icon(Icons.headset, size:24, color:Colors.white)),
                                         padding: EdgeInsets.all(1),
                                         decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(75))
                                       ),

                                       Center(child: Text("SPORTS",style: TextStyle(color:Colors.white,fontSize: 13,decorationStyle: TextDecorationStyle.wavy,decorationColor: Colors.black),))
                                     ],
                                     
                                   ) ,)
                                 ,
                               ],
                              )
                          
                
             ),

////////////////////////////////////////////////////////////////////////////////////////
/////Text showing on the 2nd screen from the user point of view
/////////////////////////////////////////////////////////////////////////////////
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 15, 0, 5),
                    child: Text("THURSDAY 8:30PM",
                      style: TextStyle(color:Colors.white,fontSize: 13,decorationStyle: TextDecorationStyle.wavy,decorationColor: Color.fromRGBO(82, 181, 240, 1)),),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(30, 5, 0, 10),
                    child:
                    Text("READ INSPIRING QUOTES OUT LOUD ITS HEALTHY",style: TextStyle(color:Colors.white,fontSize: 18,decorationStyle: TextDecorationStyle.wavy,decorationColor: Color.fromRGBO(82, 181, 240, 1)),),
                  ),
                  
                 
                 //the size box bellow contains the images intersecting each other
                 Padding(
                   padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                   child:  SizedBox(
                    width: 60,
                    height: 40,
                    child: Stack(
                            children: <Widget>[
                              Positioned(
                                left:0,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("./asset/image1.jpg"),
                                ),
                              ),

                              Positioned(
                                right:0,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("./asset/image2.jpg"),
                                ),
                              )
                            ],
                    ),
                  )),
                 
                ],
              )
                        ],
                      ),
                
             ),



  ////////////////////////////////////////////////////////////////////////////////
            //text showing on the third box from the viewer point of view
  ///////////////////////////////////////////////////////////////////////
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 15, 0, 5),
                    child: Text("THURSDAY 6:30AM",
                      style: TextStyle(color:Colors.white,fontSize: 13,decorationStyle: TextDecorationStyle.wavy,decorationColor: Color.fromRGBO(111, 110, 230, 1)),),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(30, 5, 0, 10),
                    child:
                    Text("DRINK 2 CUPS OF DARK COFFE EVERY DAY",style: TextStyle(color:Colors.white,fontSize: 18,decorationStyle: TextDecorationStyle.wavy,decorationColor: Color.fromRGBO(111, 110, 230, 1)),),
                  ),
                  
                 
                 //the size box bellow contains the images intersecting each other
                 Padding(
                   padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                   child:  SizedBox(
                    width: 60,
                    height: 40,
                    child: Stack(
                            children: <Widget>[
                              Positioned(
                                left:0,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("./asset/image1.jpg"),
                                ),
                              ),

                              Positioned(
                                right:0,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("./asset/image2.jpg"),
                                ),
                              )
                            ],
                    ),
                  )),
                 
                ],
              )
                  ],
                ),
                
             ),




        //////////////////////////////////////////////
        //text showing on the forth box from the viewer point of view
        /////////////////////////////////////////////
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 15, 0, 5),
                    child: Text("THURSDAY 8:30PM",
                      style: TextStyle(color:Colors.white,fontSize: 13,decorationStyle: TextDecorationStyle.wavy,decorationColor: Color.fromRGBO(144, 59, 251, 1)),),
                  ),

                  Padding(
                    padding:EdgeInsets.fromLTRB(30, 5, 0, 10),
                    child:
                    Text("CRAZY EFFECTS MUSIC HAS ON THE BRAIN",style: TextStyle(color:Colors.white,fontSize: 18,decorationStyle: TextDecorationStyle.wavy,decorationColor: Color.fromRGBO(144, 59, 251, 1)),),
                  ),
                  
                 
                 //the size box bellow contains the images intersecting each other
                 Padding(
                   padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                   child:  SizedBox(
                    width: 60,
                    height: 40,
                    child: Stack(
                            children: <Widget>[
                              Positioned(
                                left:0,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("./asset/image1.jpg"),
                                ),
                              ),

                              Positioned(
                                right:0,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("./asset/image2.jpg"),
                                ),
                              )
                            ],
                    ),
                  )),
                 
                ],
              )

           ],
         ),
      ),
         
     ],
  ),

      Positioned(
        bottom: 0,
        right: 0,
        child:FloatingActionButton(onPressed:()=>{print('button pressed')},
              backgroundColor: Colors.white,
              child: Text('+',style: TextStyle(color: Colors.black,fontSize: 18)),
          ))
          
        ],)
    );
  }
}