import 'package:flutter/material.dart';
import 'package:tambo/widgets/icon_badge.dart';

class DetailsContact extends StatelessWidget {

  Map contact ; 
  DetailsContact ({@required this.contact});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: this.contact["contactos"].length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(this.contact["contactos"][index]["nombre"]),
            subtitle: Text(this.contact["contactos"][index]["telefonop"]),
          );
        },
      ),
      
    );
  }

 
  }

 
 