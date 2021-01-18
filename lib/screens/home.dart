import 'package:flutter/material.dart';
import 'package:tambo/generated/l10n.dart';
import 'package:tambo/util/contact.dart';
import 'package:tambo/util/places.dart';
import 'package:tambo/widgets/horizontal_place_item.dart';
import 'package:tambo/widgets/search_bar.dart';
import 'package:tambo/widgets/vertical_place_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: ListView(
        
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              S.of(context).welcomeTambo,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchBar(),
          ),
          buildHorizontalList(context),

          buildVerticalList(context),
        ],
      ),
    );
  }

  buildHorizontalList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0),
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: Place.getPlaces(context) == null ? 0.0 : Place.getPlaces(context).length,
        itemBuilder: (BuildContext context, int index) {
          Map place = Place.getPlaces(context).reversed.toList()[index];
          return HorizontalPlaceItem(place: place);
        },
      ),
    );
  }

  buildVerticalList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Contact.getContact() == null ? 0 : Contact.getContact().length,
        itemBuilder: (BuildContext context, int index) {
          Map place = Contact.getContact()[index];
          return VerticalPlaceItem(contact: place);
        },
      ),
    );
  }
}
