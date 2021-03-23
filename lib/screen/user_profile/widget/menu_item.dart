import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String label;
  final void Function()? onTap;

  MenuItem({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(Icons.edit),
      title: Text(
        label,
        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w700),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 17),
    );
  }
}
