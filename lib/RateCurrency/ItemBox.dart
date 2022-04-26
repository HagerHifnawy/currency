import 'package:flutter/material.dart';

Widget ItemBox({
  Function? function,
  required String? text,
  String? price,
  required IconData? icon,
}) {
  return InkWell(
    onTap: () => function!(),
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black12)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 55,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icon,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 1,
                    height: double.infinity,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  '$text',
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                '$price ',
                style: TextStyle(
                    color: Color.fromARGB(255, 64, 77, 102),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
