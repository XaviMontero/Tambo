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
      
      ),
      body: ListView.builder(
        itemCount: this.contact["contactos"].length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(this.contact["contactos"][index]["nombre"]),
            subtitle: Text('${this.contact["contactos"][index]["telefonop"]} \n${this.contact["contactos"][index]["direccion"]}' ),
            
          );
        },
      ),
      
    );
  }

 
  }

 
 