import 'package:flutter/material.dart';
import 'package:flutter_google_places_web/flutter_google_places_web.dart';

const kGoogleApiKey = "API_KEY";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Places Web',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String test = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 150),
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Address autocomplete',
              ),
              FlutterGooglePlacesWeb(
                apiKey: kGoogleApiKey,
                proxyURL: 'https://cors-anywhere.herokuapp.com/',
              ),
              FlatButton(
                onPressed: () {
                  print(FlutterGooglePlacesWeb.value['name']); // '1600 Amphitheatre Parkway, Mountain View, CA, USA'
                  print(FlutterGooglePlacesWeb.value['streetAddress']); // '1600 Amphitheatre Parkway'
                  print(FlutterGooglePlacesWeb.value['city']); // 'CA'
                  print(FlutterGooglePlacesWeb.value['country']);
                  setState(() {
                    test = FlutterGooglePlacesWeb.value['name'] ?? '';
                  });
                },
                child: Text('Press to test'),
              ),
              Text(test),
            ],
          ),
        ),
      ),
    );
  }
}
