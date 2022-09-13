import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class MaterialAppDemo extends StatelessWidget {
  const MaterialAppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MaterialAppDemo'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
