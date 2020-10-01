
import 'package:flutter/material.dart';
import 'package:meet_network_image/meet_network_image.dart';

import 'contstant.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Gallery')),
        body: Container(
          child: Container(
              child: GridView.builder(
                  itemCount: listImage.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => Hero(
                        tag: "photo$index",
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Detail(tag:"photo$index",photo:listImage[index]))),
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: MeetNetworkImage(
                                  imageUrl: listImage[index].url,
                                  fit: BoxFit.cover,
                                  loadingBuilder: (context) => Center(
                                        child: SizedBox(
                                            width: 15,
                                            height: 15,
                                            child: CircularProgressIndicator()),
                                      ),
                                  errorBuilder: (context, _) => Center(
                                        child: Icon(Icons.error_outline),
                                      ))),
                        ),
                      ))),
        ));
  }
}
