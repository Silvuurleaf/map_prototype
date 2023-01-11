import 'package:flutter/material.dart';
import 'package:map_prototype/screens/current_location_screen.dart';
import 'package:map_prototype/screens/simple_map_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gmap"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context ){
                return const SimpleMapScreen();
              }));
            }, child: const Text("simple map")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context ){
                return const CurrentLocationScreen();
              }));
            }, child: const Text("User current location"))
          ],
        )
      ),
    );
  }
}
