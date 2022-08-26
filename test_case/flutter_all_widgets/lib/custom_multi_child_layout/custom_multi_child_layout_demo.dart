import 'package:flutter/material.dart';

class CustomMultiChildLayoutDemo extends StatelessWidget {
  const CustomMultiChildLayoutDemo({Key? key}) : super(key: key);

  static const Map<String, Color> _colors = <String, Color>{
    'Red': Colors.red,
    'Green': Colors.green,
    'Blue': Colors.blue,
    'Cyan': Colors.cyan,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomMultiChildLayoutDemo"),
      ),
      body: CustomMultiChildLayout(
        delegate: _CascadeLayoutDelegate(
          colors: _colors,
          overlap: 30.0,
          textDirection: Directionality.of(context),
        ),
        children: <Widget>[
          // Create all of the colored boxes in the colors map.
          for (MapEntry<String, Color> entry in _colors.entries)
            // The "id" can be any Object, not just a String.
            LayoutId(
              id: entry.key,
              child: Container(
                color: entry.value,
                width: 100.0,
                height: 100.0,
                alignment: Alignment.center,
                child: Text(entry.key),
              ),
            ),
        ],
      ),
    );
  }
}

class _CascadeLayoutDelegate extends MultiChildLayoutDelegate {
  _CascadeLayoutDelegate({
    required this.colors,
    required this.overlap,
    required this.textDirection,
  });

  final Map<String, Color> colors;
  final double overlap;
  final TextDirection textDirection;

  // Perform layout will be called when re-layout is needed.
  @override
  void performLayout(Size size) {
    final double columnWidth = size.width / colors.length;
    Offset childPosition = Offset.zero;
    switch (textDirection) {
      case TextDirection.rtl:
        childPosition += Offset(size.width, 0);
        break;
      case TextDirection.ltr:
        break;
    }
    for (final String color in colors.keys) {
      // layoutChild must be called exactly once for each child.
      final Size currentSize = layoutChild(
        color,
        BoxConstraints(maxHeight: size.height, maxWidth: columnWidth),
      );
      // positionChild must be called to change the position of a child from
      // what it was in the previous layout. Each child starts at (0, 0) for the
      // first layout.
      switch (textDirection) {
        case TextDirection.rtl:
          positionChild(color, childPosition - Offset(currentSize.width, 0));
          childPosition += Offset(-currentSize.width, currentSize.height - overlap);
          break;
        case TextDirection.ltr:
          positionChild(color, childPosition);
          childPosition += Offset(currentSize.width, currentSize.height - overlap);
          break;
      }
    }
  }

  // shouldRelayout is called to see if the delegate has changed and requires a
  // layout to occur. Should only return true if the delegate state itself
  // changes: changes in the CustomMultiChildLayout attributes will
  // automatically cause a relayout, like any other widget.
  @override
  bool shouldRelayout(_CascadeLayoutDelegate oldDelegate) {
    return oldDelegate.textDirection != textDirection || oldDelegate.overlap != overlap;
  }
}
