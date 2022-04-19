import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(width: 2.0, color: const Color(0xFFBDBDBD)),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: <Widget>[
            Text(
              '2021/2',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.grey[800],
            ),
          ],
        ),
      ),
    );
  }
}
