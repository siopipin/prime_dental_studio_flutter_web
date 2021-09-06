import 'package:admin/models/Blog.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/home/components/blog_post.dart';
import 'package:admin/screens/home/components/categories.dart';
import 'package:admin/screens/home/components/search.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/recent_posts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kHomeDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kHomeDefaultPadding),
                Categories(),
                SizedBox(height: kHomeDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
