import 'package:flutter/material.dart';
import 'favorite_provider.dart';
import 'favouritehome.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Favourites());
}

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}