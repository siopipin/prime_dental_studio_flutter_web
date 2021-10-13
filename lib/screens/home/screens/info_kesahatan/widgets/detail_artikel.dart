import 'package:admin/screens/home/screens/info_kesahatan/info_kesehatan.dart';
import 'package:flutter/material.dart';

class DetailArtikel extends StatefulWidget {
  DetailArtikel({Key key, this.article}) : super(key: key);
  static const String baseRoute = '/article';
  static String Function(String slug) routeFromSlug =
      (String slug) => baseRoute + '/$slug';

  final Article article;

  @override
  _DetailArtikelState createState() => _DetailArtikelState();
}

class _DetailArtikelState extends State<DetailArtikel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(widget.article.title),
    );
  }
}
