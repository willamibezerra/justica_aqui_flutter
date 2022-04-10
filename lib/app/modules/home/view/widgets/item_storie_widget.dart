import 'package:flutter/material.dart';

class ItemStorieWidget {
  final String url;
  const ItemStorieWidget({Key? key, required this.url});

  Scaffold get build {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        child: Image.network(
          url,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
