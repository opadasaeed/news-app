import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class NewsCard extends StatelessWidget {
  String imageUrl;
  String NewsDescription;
  String linknews;

  NewsCard(
      {required this.imageUrl,
      required this.NewsDescription,
      required this.linknews});

  @override
  Widget build(BuildContext context) {
    if (imageUrl == "null") {
      imageUrl =
          'https://image.shutterstock.com/image-vector/no-image-available-vector-illustration-260nw-744886198.jpg';
    }
    return GestureDetector(
      onTap: () async {
        if (!await launch(linknews)) throw 'Could not launch $linknews';
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            //set border radius more than 50% of height and width to make circle
          ),
          elevation: 5,
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            title: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
              //add border radius
              child: Image.network(
                "$imageUrl",
                fit: BoxFit.cover,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '$NewsDescription',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Share.share('$linknews');
                      },
                      icon: Icon(Icons.share),
                    ),
                    IconButton(
                      onPressed: () {
                        FlutterClipboard.copy('$linknews');
                      },
                      icon: Icon(Icons.copy_sharp),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
