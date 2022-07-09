import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Image.network(
                'https://img-premium.flaticon.com/png/512/4115/premium/4115394.png?token=exp=1631844755~hmac=42c20c35bbf73739d67d3abe0c6889ec',
                width: 45,
                height: 45,
              )),
          BottomNavigationBarItem(
              label: 'Resturants',
              icon: Image.network(
                'https://img-premium.flaticon.com/png/512/552/premium/552909.png?token=exp=1631844755~hmac=22a21370d4bb46370ad2c51e89fe54db',
                width: 45,
                height: 45,
              )),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .35,
            decoration: BoxDecoration(
                color: Color(0xFFF39E47),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.only(left: 35, top: 15),
            child: Text(
              'What can we get you,\nBaba?',
              style: TextStyle(
                  color: HexColor('#EEEEEE'),
                  fontWeight: FontWeight.bold,
                  fontSize: 36),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 190.0, left: 45),
            child: Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                  color: HexColor('#EEEEEE'),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 202.0, left: 117),
            child: Text(
              'Search..',
              style: TextStyle(fontSize: 22, color: HexColor('##707070')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 295.0, left: 30),
            child: Text(
              'Categories',
              style: TextStyle(
                  color: HexColor('#707070'),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 295.0),
            child: Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: CategoryCard(
                      title: 'Pizza',
                      svgSrc:
                          'https://cdn-icons-png.flaticon.com/512/1384/1384727.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: CategoryCard(
                      title: 'Burger',
                      svgSrc:
                          'https://cdn-icons-png.flaticon.com/512/3075/3075977.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 540.0, left: 20, right: 20),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 10),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/2784/2784459.png'),
                          radius: 25,
                        )),
                    Text(
                      'Recnt Order: Mehengi Coffee\nPrice: Bohot Mehengi\nCompany: Starbux',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: HexColor('#eeeeee')),
                    ),
                  ],
                ),
              ),
              height: 180,
              width: 380,
              decoration: BoxDecoration(
                  color: HexColor('#F39E47'),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 570.0, left: 120),
            child: Text(
              'Date: 17th Oct',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#FFFFFF')),
            ),
          )
        ],
      ),
    );
  }
}
