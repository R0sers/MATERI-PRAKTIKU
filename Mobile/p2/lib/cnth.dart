import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class nameCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      title: 'Bini Gwejh',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 53, 53),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/mypunyagwejh.jpeg'),
                  radius: 80.0,
                ),
                Text('INI BINI GWEJH YAH!!',
                style: GoogleFonts.ubuntuCondensed
                  (
                    fontSize: 30,
                    fontWeight: .bold
                  ),
                ),
                Text('Nama : Catherina Valencia Kurniawan',
                style: GoogleFonts.ubuntuCondensed
                  (
                    fontSize: 30,
                    fontWeight: .bold
                  ),
                ),
                Text('Team : PASSION',
                  style: GoogleFonts.ubuntuCondensed
                  (
                    fontSize: 30,
                    fontWeight: .bold,
                    fontStyle: .italic,
                  )
                ),
                SizedBox(
                  height: 100,
                  width: 500,
                  child: Divider(
                    color: const Color.fromARGB(255, 255, 243, 82),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(1000),
                    side: BorderSide(
                      color: Colors.white
                    )
                  ),
                  color: const Color.fromARGB(255, 136, 255, 0) ,
                  margin: EdgeInsets.symmetric(
                    horizontal: 50, 
                    vertical: 5
                    ),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('+62 8000 0000'),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(1000),
                    side: BorderSide(
                      color: Colors.white
                    )
                  ),
                  color: const Color.fromARGB(255, 1, 77, 255) ,
                  margin: EdgeInsets.symmetric(
                    horizontal: 50, 
                    vertical: 5
                    ),
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('KNIVESAMA@yahoo.co.id'),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(1000),
                    side: BorderSide(
                      color: Colors.white
                    )
                  ),
                  color: const Color.fromARGB(255, 245, 255, 57) ,
                  margin: EdgeInsets.symmetric(
                    horizontal: 50, 
                    vertical: 5
                    ),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('fx sudirman'),
                    trailing: Icon(Icons.home_max),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 500,
                  child: Divider(
                    color: const Color.fromARGB(255, 255, 243, 82),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(1000),
                    side: BorderSide(
                      color: Colors.white
                    )
                  ),
                  color: const Color.fromARGB(255, 255, 0, 238) ,
                  margin: EdgeInsets.symmetric(
                    horizontal: 50, 
                    vertical: 5
                    ),
                  child: ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text('call meh'),
                    trailing: Icon(Icons.phone_enabled),
                  ),
                )
              ],  
            ),
          ),
        ),

      ),
    );
  }
}