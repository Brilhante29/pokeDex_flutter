import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoListTile extends StatefulWidget {
  final Widget? leading;
  final String? title;
  final String? subtitle;
  final Widget? trailing;

  const CupertinoListTile({
    Key? key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
  }) : super(key: key);

  @override
  _StatefulStateCupertino createState() => _StatefulStateCupertino();
}

class _StatefulStateCupertino extends State<CupertinoListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              widget.leading!,
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.title!,
                      style: TextStyle(
                        fontFamily: 'SecOne',
                        color: CupertinoColors.black,
                        fontSize: 20,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: CupertinoColors.lightBackgroundGray),
                      child: Text(widget.subtitle!,
                          style: TextStyle(
                            fontFamily: 'SecOne',
                            color: CupertinoColors.activeBlue,
                            fontSize: 15,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
          widget.trailing!,
        ],
      ),
    );
  }
}
