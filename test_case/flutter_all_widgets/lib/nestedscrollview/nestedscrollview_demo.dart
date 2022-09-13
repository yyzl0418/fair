import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

@FairPatch()
class NestedScrollViewDemo extends StatelessWidget {
  const NestedScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NestedScrollViewDemo'),
      ),
      body: NestedScrollView(body: Container(color: Colors.red,), headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        // These are the slivers that show up in the "outer" scroll view.
        return <Widget>[
          SliverOverlapAbsorber(
            handle:
            NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar(
              title:
              const Text('Books'), // This is the title in the app bar.
              pinned: true,
              expandedHeight: 150.0,
              forceElevated: innerBoxIsScrolled,
            ),
          ),
        ];
      },),
    );
  }
}
