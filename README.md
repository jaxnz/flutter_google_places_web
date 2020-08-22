# Flutter Google Places Web

<p  align="left">
<a  href="https://pub.dartlang.org/packages/flutter_google_places_web"><img  alt="pub version"  src="https://img.shields.io/pub/v/flutter_google_places_web.svg?style=flat-square"></a>
<a  href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MJWWX73VL8DQW&source=url"><img  alt="donate"  src="https://img.shields.io/badge/Donate-PayPal-green.svg"></a>
</p>

A web designed form field for Google Places Autocomplete

![flutterwebplaces](https://user-images.githubusercontent.com/62976701/90967357-2cbe0e80-e532-11ea-90b7-07c2dfeb1259.gif)

## API key

To use this library you need a ***Web*** API key. [Here](https://developers.google.com/places/web-service/get-api-key)

## Usage

`FlutterGooglePlacesWeb` is a Google Places Autocomplete field for Flutter Web.

```dart
import  'package:flutter_google_places_web/flutter_google_places_web.dart';

FlutterGooglePlacesWeb(
apiKey: <GOOGLE_API_KEY>,
proxyURL: 'https://cors-anywhere.herokuapp.com/',
components: 'country:us',
),
```

If you have XMLHttpRequest errors, please use a proxy. For more information please see [cors-anywhere](https://cors-anywhere.herokuapp.com/)

If a user types and selects 1600 Amphitheatre Parkway you can retrieve the data

```dart
String name = FlutterGooglePlacesWeb.value['name'];
String streetAddress = FlutterGooglePlacesWeb.value['streetAddress'];
String city = FlutterGooglePlacesWeb.value['city'];
String country = FlutterGooglePlacesWeb.value['country'];

print(name); // '1600 Amphitheatre Parkway, Mountain View, CA, USA'
print(streetAddress); // '1600 Amphitheatre Parkway'
print(city); // 'CA'
print(country); // 'USA'
```