import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bikersworld/screen/dashboard/Autopart/partDetail.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bikersworld/screen/dashboard/AutoPartStore/autoPartStoreDashboard.dart';

class autoPartStoreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCard('Dashbord', 'Shegal Motor', 'assets/autoPartStore/autoPartStore1.jpeg', false, false, context),
          _buildCard('Dashboard', 'Ali Autos', 'assets/autoPartStore/autoPartStore2.png', true, false, context),
          _buildCard('Dashboard', 'Auto Parts', 'assets/autoPartStore/autoPartStore3.jpeg', false, true, context),
          _buildCard('Bike handle', 'Auto Parts Asia', 'assets/autoPartStore/autoPartStore4.jpeg', false, false, context),
          _buildCard('Bike handle', 'JB Auto Store', 'assets/autoPartStore/autoPartStore5.png', false, false, context ),
          _buildCard('Bike handle', 'UPI Auto', 'assets/autoPartStore/autoPartStore6.png', false, false, context),
        ],
      ),
    );
  }
}


Widget _buildCard(String name, String price, String imgPath, bool added,
    bool isFavorite, context) {
  return Padding(
    padding: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {

      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white
        ),
        child: Column(children: [
          Hero(
            tag: imgPath,
            child: Container(
              height: 115.0,
              width: 145.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgPath),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(price,
            style: TextStyle(
                color: Color(0xfff7892b),
                fontSize: 17),
          ),
          SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Container(
                    child: Text(name,
                      style: TextStyle(
                        color: Color(0xFF575E67),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => autoPartStoreDashboardPage()));
                    },
                    child: Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(5),

                      ),
                      child: Center(
                        child: Text(
                          "Check",
                          style: GoogleFonts.quicksand(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        ),
      ),
    ),
  );
}