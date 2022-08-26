import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class DividerDemo extends StatelessWidget {
  const DividerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBoxTransitionDemo"),
      ),
      body: Column(
        children:  <Widget>[
          Expanded(child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                  child: const Center(
                    child: Text('Above'),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 0,
                color: Colors.black,
              ),
              // Subheader example from Material spec.
              // https://material.io/components/dividers#types
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Subheader',
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Below'),
                  ),
                ),
              ),
            ],
          )),

          Expanded(
            child: FairWidget(
              name: "DividerDemo",
              path: "assets/bundle/fair/lib_divider_divider_demo.fair.json",
            ),
          ),
        ],
      ),
    );
  }
}
