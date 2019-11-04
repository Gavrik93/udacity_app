import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);
final _edgeInsertPaddingInkwell = EdgeInsets.all(8.0);

class Category extends StatelessWidget {
  final String name;
  final IconData iconLocation;
  final ColorSwatch color;
  const Category({
    Key key,
    @required this.name,
    @required this.iconLocation,
    @required this.color,
  })  : assert(name != null),
        assert(color != null),
        assert(color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            final snackBar = SnackBar(content: Text('Current widget pressed'));
            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: Padding(
            padding: _edgeInsertPaddingInkwell,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
