import 'package:flutter/material.dart';

import 'package:flutter_google_places_web/src/flutter_google_places_web.dart';

class SearchResultsTile extends StatelessWidget {
  final Address addressData;
  final Function(Address) callback;
  final Map<String, String> address;
  SearchResultsTile({this.addressData, this.callback, this.address});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          '${addressData.name}',
          style: TextStyle(fontSize: 16),
        ),
        dense: true,
        onTap: () {
          callback(addressData);
        });
  }
}
