import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class HeroDemo extends StatelessWidget {

  const HeroDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HeroDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20.0),
                ListTile(
                  leading:  Hero(
                    tag: 'hero-rectangle',
                    child: Container(height: 50,width: 50,color: Colors.red,),
                  ),
                  title: const Text(
                    'Tap on the icon to view hero animation transition.',
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_hero_hero_demo.fair.json",)),
        ],
      ),
    );
  }
}
