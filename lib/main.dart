
import 'package:flutter/material.dart';
import 'package:gallery/contstant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meet_network_image/meet_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
      body: Container(
          child: Container(
            child:GridView.builder(
              itemCount: listUrlImage.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.all(10),
                          child: MeetNetworkImage(imageUrl: listUrlImage[index],fit: BoxFit.cover, loadingBuilder: (context)=>Center(child: SizedBox(width:15,height:15,child:CircularProgressIndicator()),), errorBuilder:(context,_)=>Center(child: Icon(Icons.error_outline),))))
                
                  ),
      )
    );
  }
}
