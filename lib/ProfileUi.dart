import 'package:flutter/material.dart';

class ProfileUi extends StatefulWidget {
  @override
  _ProfileUiState createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {

  @override
  Widget build(BuildContext context) {
    final Color color1 = Colors.blueGrey[900];
    final Color color2 = Colors.blueGrey[200];
      return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0), bottomRight: Radius.circular(50.0)),
                  gradient: LinearGradient(
                      colors: [color1,color2],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  )
              ),
            ),
             Container(
               margin: const EdgeInsets.only(top: 100),
              child: Column(
                children: <Widget>[
//                  SizedBox(height: 20.0),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
                            height: double.infinity,
                            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 1.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child:Image(image:
                                AssetImage('images/profile-picture.gif'),
                                  fit: BoxFit.cover,
                                )))
                      ],
                    ),
                  ),
//                  SizedBox(height: 10.0),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("Kamel Ahmed", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0
                        ),),
                        Text(" Experince years : 5 years", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                        ),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text( '-----' ,
                        style : TextStyle(color: Colors.black,),
                      )
                    ],
                  ),
                 Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
                          margin: const EdgeInsets.only(top: 35 ,left: 20.0, right: 20.0,bottom: 20.0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [color1,color2],
                              ),
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                alignment: Alignment.centerRight,
                                color: Colors.white,
                                icon: Icon(Icons.call),
                                onPressed: (){
                                  showModalBottomSheet(context: context, builder: (context) {
                                    return Container(
                                      child: Text('Hello From Modal Bottom Sheet'),
                                      padding: EdgeInsets.all(40.0),
                                    );
                                  });
                                },
                              ),
                              Spacer(),
                              IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.markunread),
                                onPressed: ( ){},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
                          margin: const EdgeInsets.only(top: 35 ,left: 20.0, right: 20.0,bottom: 20.0),
                          child: Text(
                            'Reviwes', style: TextStyle(fontSize: 15,),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading : IconButton(
                icon: Icon(Icons.arrow_back,size: 30,),
                onPressed: (){},
              )
              ,actions: <Widget>[
            ],
              title: new Text('Profile',
                style: new TextStyle(fontSize:22 ),) ,
            ),
          ],
        ),
      );
    }
  }


