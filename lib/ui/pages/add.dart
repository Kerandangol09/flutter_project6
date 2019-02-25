import 'package:flutter/material.dart';
import './home.dart';


class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item"),
      ),      
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'title',
            prefixIcon: Icon(Icons.text_fields)
            ),
          ),
            SizedBox(height: 50.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Description',
                prefixIcon:Icon(Icons.details),
                
              ),
              
            ),
          SizedBox(height: 50.0,),
          RaisedButton.icon(
          icon:Icon(Icons.photo_camera),
          label: Text("Add Image"),
          onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (BuildContext context)=>HomePage(),
                ));
               
              },
              
              
             

          ),
    
          
  
          

          
        ],

      ),
      
    );
  }
}