import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTableDemo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              /// [PageView.scrollDirection] defaults to [Axis.horizontal].
              /// Use [Axis.vertical] to scroll vertically.
              children: const <Widget>[
                Center(
                  child: Text('First Page'),
                ),
                Center(
                  child: Text('Second Page'),
                ),
                Center(
                  child: Text('Third Page'),
                )
              ],
            ),
          ),
          Expanded(
            child: FairWidget(
              path: "assets/bundle/fair/lib_page_view_page_view_demo.fair.json",
            ),
          ),
        ],
      ),
    );
  }
}
