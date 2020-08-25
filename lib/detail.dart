import 'package:flutter/material.dart';
import 'package:gallery/model/photo.dart';
import 'package:meet_network_image/meet_network_image.dart';

class Detail extends StatelessWidget {
  Detail({this.tag, this.photo});
  final String tag;
  final Photo photo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(photo.title)),
      body: Container(
          child: Hero(
        tag: tag,
        child: MeetNetworkImage(
            imageUrl: photo.url,
            fit: BoxFit.cover,
            loadingBuilder: (context) => Center(
                  child: SizedBox(
                      width: 15,
                      height: 15,
                      child: CircularProgressIndicator()),
                ),
            errorBuilder: (context, _) => Center(
                  child: Icon(Icons.error_outline),
                )),
      )),
    );
  }
}
