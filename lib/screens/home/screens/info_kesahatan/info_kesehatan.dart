import 'package:admin/constants.dart';
import 'package:admin/screens/home/main/components/footer.dart';
import 'package:admin/screens/home/main/components/home_main_header.dart';
import 'package:admin/screens/home/screens/info_kesahatan/widgets/detail_artikel.dart';
import 'package:flutter/material.dart';

class InfoKesehatan extends StatefulWidget {
  static const String route = '/blog';

  InfoKesehatan({Key key}) : super(key: key);

  @override
  _InfoKesehatanState createState() => _InfoKesehatanState();
}

class _InfoKesehatanState extends State<InfoKesehatan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          HomeMainHeader(),
          Container(
            padding: EdgeInsets.all(kHomeDefaultPadding),
            constraints: BoxConstraints(maxWidth: kHomeMaxWidth),
            child: SafeArea(child: blogPage()),
          ),
          FooterHome()
        ],
      ),
    ));
  }

  blogPage() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Info Kesehatan',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Divider(),
          for (Article article in articles)
            artikel(
                judul: article.title,
                deskripsi:
                    'Perawatan kesehatan dan estetika gigi biasanya dimulai sejak dini, saat gigi susu si Kecil mulai tumbuh. Walaupun gigi susu akan tanggal dan digantikan',
                slug: article.slug)
        ],
      ),
    );
  }

  artikel(
      {@required String judul,
      @required String deskripsi,
      @required String slug}) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80.0,
              height: 90.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i0.wp.com/newdoorfiji.com/wp-content/uploads/2018/03/profile-img-1.jpg?ssl=1'")),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: bgColor,
              ),
            ),
            SizedBox(width: 10),

            //Deskripsi
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(judul,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  deskripsi,
                  style: TextStyle(fontSize: 12),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        DetailArtikel.routeFromSlug(slug),
                      );
                    },
                    child: Text('Baca Selengkapnya'))
              ],
            )
          ],
        ),
        Divider()
      ],
    );
  }
}

class Article {
  const Article({this.title, this.slug});

  final String title;
  final String slug;

  static Widget getArticlePage(String slug) {
    for (Article article in articles) {
      if (article.slug == slug) {
        return DetailArtikel(article: article);
      }
    }
    return null;
  }
}

const List<Article> articles = [
  Article(
    title: 'A very interesting article',
    slug: 'a-very-interesting-article',
  ),
  Article(
    title: 'Newsworthy news',
    slug: 'newsworthy-news',
  ),
  Article(
    title: 'RegEx is cool',
    slug: 'regex-is-cool',
  ),
];
