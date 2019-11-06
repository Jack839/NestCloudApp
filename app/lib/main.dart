import 'package:flutter/material.dart';

import 'lsit.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var button2 = RaisedButton(
      child: Text("CLICK"),
      onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Screen2()),
  );
}
    );
    return MaterialApp( 

      

      home: Scaffold(

        body: SafeArea( child: _createStack(button2), ),
               
       
      )
    );     
             
  }

  _createStack(var button2) {
    return new Stack(

      children: <Widget>[

        new Align(

          alignment: new Alignment(0.0, 0.0),

          child: Container(

            child: MyApp2(),

          ),

        ),

        new Align(

          alignment: const Alignment(-0.95, -1.23),

          child: new Container( 

            height: 240.0,
            width: 190.0,

            constraints: BoxConstraints(
            maxHeight: 200.0,
            maxWidth: 150.0,
            ),
              
            child: Image.asset('assets/images/logo_black_transparent.png'),

          )
        ),

          

        new Align(
          alignment: new Alignment(-0.92, -0.87),

          child: Container(
                  
            child: new Text(
            'NestCloudApp' ,style: new TextStyle(color: Colors.black, fontSize: 17.0))

          ),
        ),

        new Align(

          alignment: new Alignment(-0.90, -0.80),

          child: Container (child: Divider()),

        ),



        new Align(

            alignment: new Alignment(0.95, -1.0),
            child: button2,
            
          
        ),
          

        new Align(
            
          alignment: new Alignment( -0.80, -0.80), 

          child: new Container (

                        
          margin: EdgeInsets.only(top: 100, bottom: 60, right: 15, left: 15),
            

          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
       
            child: Container(
                    height: 800.0,
                    width: double.infinity,
                    

                    child: Scrollbar(
                       
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,

                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                      
                          child:  DataTable(

              columns: [

                DataColumn(label: Text("Hello")),
                DataColumn(label: Text("World")),
                

              ],
              rows: [

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                ),

                DataRow(
                                    
                  cells: [
                  DataCell(Text("Data")),
                  DataCell(Text("Item")),
                  
                  ]
                )     
                

              ],

              )                    
                            )
                        )

                  ),

              ),
          ),
        ),
    ),          
      ]   
    );
  }

}

class MyApp2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyApp2State();
  }
}

class MyApp2State extends State<MyApp2> {

  int _index = 0;

    @override
    Widget build(BuildContext context) {

       return Scaffold(

             bottomNavigationBar: BottomNavigationBar(
               
                    
                    onTap: (newIndex) => setState(() => _index = newIndex),
                    currentIndex: _index,
                    
                    items: [
                      BottomNavigationBarItem(icon: Icon(Icons.looks_one), title: Text("Screen1")),
                      BottomNavigationBarItem(icon: Icon(Icons.looks_two), title: Text("Screen2")),
                      BottomNavigationBarItem(icon: Icon(Icons.looks_3), title: Text("Screen3")),
                    ],
         ),
     );
  }



}