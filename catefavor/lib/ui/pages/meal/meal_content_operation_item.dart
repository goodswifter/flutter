import 'package:flutter/material.dart';
import '../../../core/extension/int_extension.dart';

class ADOperationItem extends StatelessWidget {
  final Icon _icon;
  final String _title;

  ADOperationItem(this._icon, this._title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _icon,
        SizedBox(width: 3.px),
        Text(_title)
      ],
    );
  }
}
