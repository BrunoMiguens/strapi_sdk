<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.
StrapiSdk is a flutter sdk to interact with Strapi Server

## Features
With StrapiSdk you can find,findOne,create,update and delete a ressource

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started
Install strapi_sdk with the command ```flutter pub add strapi_sdk```

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
import 'package:strapi_sdk/strapi_sdk.dart';

void main(List<String> args) async {
  Map<String, dynamic> json = {
    "filters": {
      "\$or": [
        {
          "date": {
            "\$eq": '2020-01-01',
          },
        },
        {
          "date": {
            "\$eq": '2020-01-02',
          },
        },
      ],
      "author": {
        'name': {
          "\$eq": 'Kai doe',
        },
      },
    }
  };
  StrapiQueryBuilder sBuilder = StrapiQueryBuilder();
  StrapiQueryBuilder sBuilder2 = StrapiQueryBuilder()..whereEq("age", 17);
  StrapiQueryBuilder sBuilder3 = StrapiQueryBuilder.fromJson(json);
  print(sBuilder3.buildQueryString());
  sBuilder
    ..whereContains("title", "lou")
    // ..whereEq("surname", "loic")
    // ..or(sBuilder2)
    //..paginate(page: 2)
    ..populate(["city"]);

  print(sBuilder.buildQueryString());

  String endpoint = "http://localhost:1337";
  String token =
      '37782c0ee39e48f4e756d9634528d41dc1caaa198dc37d8d8f2ca8ff772ea011418fa1bba3ace950b3a8e96677feb194d768069a9b50a655c88e284730e9ad5f2c94cf096533af8c1bf75307a9d051f4f8d266965ab7724ef37d040108a2484097606c11c9e53b8b4a390c96e7385e1f6e9ec5dc8f3c1fda15204798c4a506ab';

  StrapiSdk.init(endpoint: endpoint, token: token);

  var resp = await StrapiSdk.instance.find<Item>(
    "items",
    params: sBuilder,
    converter: Item.fromJson,
  );
  print(resp.data);
  print(resp.meta);

  var resp2 = await StrapiSdk.instance.findOne<Item>(
    "items",
    1,
    converter: Item.fromJson,
  );
  print(resp2.attributes);
  print(resp2.id);
}

class Item {
  late String title;
  Item({required this.title});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      title: json['title'],
    );
  }
}

```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
