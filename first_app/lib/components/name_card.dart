import 'package:flutter/material.dart';
 
class NameCardData {
  const NameCardData({
    required this.name,
    required this.dob,
    required this.imageUrl,
 
  });
  final String name;
  final String dob;
  final String imageUrl;
}
 
class NameCard extends StatelessWidget {
  const NameCard({
    super.key,
    required this.data,
  });
 
  final NameCardData data;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            height: 150.0,
            child: Image.asset('assets/images/Rick_Sanchez.png')
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('Name: ${data.name}'),
              Text('DOB: ${data.dob}'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, data.name);
                },
                child: Text('Select'),
                )
            ]
          )
          
        ]
      )
    );
  }
}