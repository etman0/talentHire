
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors:Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
leading:IconButton(icon: Icon(Icons.arrow_back),
  onPressed: (){},
  color: Colors.grey,

) ,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu),
              color: Colors.greenAccent,
              onPressed: (){})
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0,-0.40) ,
                height: 100.0,
                color: Colors.white,
                child: Text('get coaching',
                  style: TextStyle(fontFamily:'Montserrat' , fontSize:20.0,color: Colors.black ), ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey,

                    )
                  ]

                  
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0,25.0 , 5.0,5.0 ),
                          child: Text('you have',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0
                          ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0,40.0 , 5.0,25.0 ),
                          child: Text('206',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0
                          ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Center(
                        child: Text('buy more',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 40.0,),
          Container(
            padding: EdgeInsets.only(left: 25.0,right:25.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
             Text('my coaches',
                   style: TextStyle(
                     color: Colors.grey,
                     fontWeight: FontWeight.bold,
                     fontSize: 12.0
                   ),
),
                Text('view past sessions',
                   style: TextStyle(
                     color: Colors.green,
                     fontWeight: FontWeight.bold,
                     fontSize: 12.0
                   ),
),
              ],
            ),
          ),
          SizedBox(height:10.0 ,),
          GridView.count(crossAxisCount: 2,
          primary: false,
          crossAxisSpacing:2.0 ,
            mainAxisSpacing: 2.0,
            shrinkWrap: true,
            children: <Widget>[
           _buildCard('tom', 'away', 1),
              _buildCard('tom', 'available', 2),
              _buildCard('yasser', 'available', 3),
              _buildCard('kim', 'away', 4),
              _buildCard('adam', 'available', 5),
              _buildCard('george', 'away', 6),
              _buildCard('donald', 'available', 7),
            ],
          )
        ],
      )
    ) ;
  }
  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            Stack(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                            )
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: status == 'away' ? Colors.amber : Colors.green,
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0
                        )
                    ),
                  )
                ]),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 175.0,
                    decoration: BoxDecoration(
                      color: status == 'away' ? Colors.grey: Colors.green,
                      borderRadius: BorderRadius.only
                        (
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)
                      ),
                    ),
                    child: Center(
                      child: Text('Request',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Quicksand'
                        ),
                      ),
                    )
                )
            )
          ],
        ),
        margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }
}
