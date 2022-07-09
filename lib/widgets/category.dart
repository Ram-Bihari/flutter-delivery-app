import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  const CategoryCard({
    Key? key,
    this.svgSrc = '',
    this.title = '',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        width: 600,
        height: 50,
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: HexColor('#F39E47'),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.black,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              print(size.height);
              print(size.width);
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.network(
                    svgSrc,
                    width: 80,
                    height: 80,
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 5.0, bottom: 10, right: 05),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: HexColor('#EEEEEE'),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
