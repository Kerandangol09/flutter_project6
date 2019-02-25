import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Map items;

  const ItemDetails({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(items["title"]),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              DecoratedBox(
                child: Container(height: 200,),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/${items['image']}.jpg'),
                  ),
                ),
              ),

              Text(
                items["title"],
                style: Theme.of(context).textTheme.display1,
              ),
              
              SizedBox(
                height: 20.0,
              ),
              Text("Item Name: ${items['title']}"),
              SizedBox(
                height: 10.0,
              ),
              Text("Description: ${items['description']}"),
              SizedBox(
                height: 10.0,
              ),

              
            ],
          )),
    );
  }
}
