import 'package:flutter/material.dart';

class CardButtom extends StatelessWidget {
  final String title;
  final Icon icon;
  final Function()? onTap;
  const CardButtom(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 35,
                backgroundColor: const Color(0xffE8E8F0),
                child: icon),
            const SizedBox(
              height: 8,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
