import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bikersworld/widgets/drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:bikersworld/screen/dashboard/Ads/AdDetail.dart';
import 'package:bikersworld/widgets/backButton.dart';

class adSearchPage extends StatefulWidget {
  @override
  _adSearchPageState createState() => _adSearchPageState();
}

class _adSearchPageState extends State<adSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BIKERSWORLD',
          style: GoogleFonts.quicksand(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: Color(0XFF012A4A),
        iconTheme: IconThemeData(color: Color(0xfffbb448),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Anything",
                        filled: true,
                        fillColor: Colors.black12,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.transparent)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.transparent)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.transparent))),
                    style: TextStyle(
                      color: Colors.black.withOpacity(.6),
                      fontWeight: FontWeight.w200,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 22, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Result: 2",
                        style: GoogleFonts.varelaRound(
                          fontSize: 15,

                        ),
                      ),
                    ),
                    SizedBox(width: 120,),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Filter",
                            style: GoogleFonts.varelaRound(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            FontAwesomeIcons.filter,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child:Row(
                        children: <Widget>[
                          Text(
                            "Sort",
                            style: GoogleFonts.varelaRound(
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            FontAwesomeIcons.sortAlphaUp,
                            size: 17,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23,),
                alignment: Alignment.topLeft,
                child: Text("Search Result", style: GoogleFonts.quicksand(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),

              SizedBox(height: 20,),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdDetail()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 160,
                            child: Image(
                              image: AssetImage("assets/bike.jpeg"),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "Honda",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Islamabad",
                                          style: TextStyle(
                                              fontSize: 15
                                          ),
                                        ),
                                        Icon(Icons.location_on),

                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 10,),

                                  Container(
                                    child: Text(
                                      "View Detail",
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                ],
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),

            ],
          ),
        ),
      ),

    );
  }
}
