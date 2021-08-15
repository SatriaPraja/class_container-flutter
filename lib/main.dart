import 'package:class_container/gridview.dart';
import 'package:class_container/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kLightColor,
        textTheme:GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor))

      ),
      home: HalamanHome(),
    );
  }
}
class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double defaultLoginSize = size.height - (size.height * 0.2);
    return Scaffold(
      body: new Center(
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: <Widget>[
            
            new Image.asset('assets/images/background.png',height: 370, width:370,),

            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => HalamanPertama())
                );
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor,
                ),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                padding: EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.center,
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),

                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => HalamanKedua())
                );
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor,
                ),
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.center,
                child: Text(
                  'Apps',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),

                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => HalamanKetiga())
                );
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor,
                ),
                margin: EdgeInsets.fromLTRB(0, 8, 0, 30),
                padding: EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.center,
                child: Text(
                  'About Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),

                ),
              ),
            ),
            Text('Satria Duta Praja \nXII RPL 6 | 02',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
class HalamanPertama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double defaultLoginSize = size.height - (size.height * 0.2);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: new Center(
        child : Column (
            children: <Widget>[
              Container(
                height: kSpacingUnit * 10,
                width: kSpacingUnit * 10,
                margin: EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: kSpacingUnit * 5,
                      backgroundImage: AssetImage('assets/images/profil1.jpg'),
                    ),
                  ],
                ),
              ),
              Text('Satria Duta Praja',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text('satriadutapc@gmail.com', style: TextStyle(fontSize: 17, color: Colors.black45),
              textAlign: TextAlign.center,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kLightColor,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,

                  child: Text(
                    'My Github',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kLightColor,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,

                  child: Text(
                    'My Instagram',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kLightColor,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,

                  child: Text(
                    'My Website',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ]
        ),
      )
    );
  }
}

class HalamanKedua extends StatefulWidget {
  @override
  HalamanKeduaState createState() => new HalamanKeduaState();
}

class HalamanKeduaState extends State<HalamanKedua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Apps', style: TextStyle(color: kLightColor),),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kLightColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),

          gridviewapps()
        ],
      ),
    );
  }
}


class HalamanKetiga extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double defaultLoginSize = size.height - (size.height * 0.2);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: new Center(
        child : Column (
          children: <Widget>[
            Container(
              height: kSpacingUnit * 10,
              width: kSpacingUnit * 10,
              margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: kSpacingUnit * 5,
                    backgroundImage: AssetImage('assets/images/profil.png'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(fontSize: 17, color: Colors.black45),
                textAlign: TextAlign.justify,
              ),
            ),
          ]
        )
      )
    );
  }
}
