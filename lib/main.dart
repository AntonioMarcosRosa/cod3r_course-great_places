import 'package:cod3r_course_great_places/providers/great_places.dart';
import 'package:cod3r_course_great_places/screens/place_detail_screen.dart';
import 'package:cod3r_course_great_places/screens/place_form_screen.dart';
import 'package:cod3r_course_great_places/screens/places_list_screen.dart';
import 'package:cod3r_course_great_places/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const GreatPlacesApp());
}

class GreatPlacesApp extends StatelessWidget {
  const GreatPlacesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Great Places',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.indigo,
            secondary: Colors.amber,
          ),
        ),
        home: const PlacesListScreen(),
        routes: {
          AppRoutes.placeForm: (context) => const PlaceFormScreen(),
          AppRoutes.placeDetail: (context) => const PlaceDatailScreen(),
        },
      ),
    );
  }
}
