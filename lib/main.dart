import 'package:flutter/material.dart';
import 'package:news_app/models/news/news.dart';
import 'package:news_app/views/home_screen/home_screen.dart';
import 'package:news_app/views/news_screen.dart/news_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage()
        //  NewsPage(
        //     data: Article(
        //   title:
        //       "Google's Pixel 7 and 7 Pro’s design gets revealed even more with fresh crisp renders",
        //   content:
        //       'The European Union and Serbia have repeatedly stated that they shared a strategic goal: for Serbia to join the EU[1][2], and this ever since Serbia was granted EU candidate status in March 2012 and started accession negotiations with Brussels in January 2014[3]. However, despite this shared objective, the progress made since the opening of negotiations has been rather slow: 22 out of 35 chapters have been opened, two of which have been provisionally closed.[4] Therefore, a lot still needs to be done before Serbia can be invited to join the bloc.',
        //   publishedAt: '2023/12/05',
        //   description:
        //       "Now we have a complete image of what the next Google flagship phones will look like. All that's left now is to welcome them during their October announcement!",
        //   image:
        //       "https://m-cdn.phonearena.com/images/article/142800-wide-two_1200/Googles-Pixel-7-and-7-Pros-design-gets-revealed-even-more-with-fresh-crisp-renders.jpg",
        //   url:
        //       "https://www.phonearena.com/news/google-pixel-7-and-pro-design-revealed-even-more-fresh-renders_id142800",
        // )),
        );
  }
}
