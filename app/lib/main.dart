import 'package:flutter/material.dart';



void main() {
  
    runApp(
    MyApp()
  );
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return 
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ) ,
        home:Scaffold(
          
          body: SafeArea(
            
            child:Container(
            margin: EdgeInsets.only(top:120,bottom: 20,right: 20,left: 20),
            decoration: BoxDecoration(
              color: Colors.black
            ),
            
            width: 350,
            color: Colors.cyan  ,
          )
            
          ),
          
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blue,
            currentIndex: _selectedPage,

            onTap: (int index){ 
            setState(() {
              _selectedPage=index;
            });
            },
            items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hot_tub),
              title: Text('hot tub')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home')
            ),
            ]
          ),
        )
    );
    
  }
}


