import 'package:flutter/material.dart';
import './item.dart';
import './add.dart';



class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),centerTitle: true,),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20.0),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          var litem = items[index];
          return ListTile(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(
              builder: (_) => ItemDetails(items:litem)
            )),
            
           leading: CircleAvatar(
              backgroundImage: AssetImage( 'assets/${litem["image"]}.jpg'),
              radius: 30.0,
            ),
            
            title: Text(litem["title"]),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(litem["description"]),
                SizedBox(height: 5.0,),
               
              ],
            ),
          );
        },
      ),
        
        
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         foregroundColor: Colors.green,
         backgroundColor: Colors.black38,
         onPressed: (){
           Navigator.pushReplacement(context, MaterialPageRoute(
             builder: (BuildContext context)=>AddPage(),
           ));
         },
       ),
      );
       
        
  }
}
 List items=[
        {
          "title" : "Shoes",
          "description" : "it is a Shoes",
          "image" : "s",
        },
         {
          "title" : "Shirt",
          "description" : "it is a Shirt",
          "image" : "shirts",
        },
         {
          "title" : "Bag",
          "description" : "it is a Bag",
          "image" :  "bags",
        },
         {
          "title" : " Pants",
          "description" : "it is a Pants",
          "image" : "pants",
        },
        
        {
          "title" : " Mobile",
          "description" : "it is a mobile ",
          "image" : "phones",
        },
        {
          "title" : " Keys",
          "description" : "it is a Key ",
          "image" : "keyswhere",
        },
        {
          "title" : " Watch",
          "description" : "it is a watch ",
          "image" : "watch",
        },
        
  ];