import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class MediaQueryDemo extends StatelessWidget {
  const MediaQueryDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQueryDemo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: MediaQuery(
              data: MediaQueryData(textScaleFactor: 3.0),
              child: Text('字体变大'),
            ),
          ),
          Expanded(child: FairWidget(path: "assets/bundle/fair/lib_mediaquery_mediaquery_demo.fair.json",)),
        ],
      ),
    );
  }
}
