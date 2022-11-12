import 'package:cod3r_course_great_places/screens/map_screen.dart';
import 'package:flutter/material.dart';
import '../models/place.dart';

class PlaceDatailScreen extends StatelessWidget {
  const PlaceDatailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Place place = ModalRoute.of(context)!.settings.arguments as Place;
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Column(children: [
        SizedBox(
          height: 250,
          width: double.infinity,
          child: Image.file(
            place.image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          place.location!.address!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              fullscreenDialog: true,
              builder: ((context) => MapScreen(
                isReadOnly: true,
                initialLocation: place.location!,
              )),
            ));
          },
          icon: const Icon(Icons.map),
          label: const Text('See in the map'),
        )
      ]),
    );
  }
}
