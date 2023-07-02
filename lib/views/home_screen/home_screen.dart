// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/config.dart';
import 'package:news_app/models/news/news.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/utils/functions_and_list.dart';
import 'package:news_app/views/news_screen.dart/news_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var aaa;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News'), actions: [
        PopupMenuButton<String>(
            icon: Icon(Icons.translate),
            onSelected: (value) {
              print('Selected: $value');
              getLanguageCode(value);
              setState(() {});
            },
            itemBuilder: (BuildContext context) => langList),
        PopupMenuButton<String>(
            icon: Icon(Icons.language),
            onSelected: (value) {
              print('Selected: $value');
              getCountryCode(value);
              setState(() {});
            },
            itemBuilder: (BuildContext context) => countryList)
      ]),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              return SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              NewsPage(data: snapshot.data![index]),
                        ));
                      },
                      child: Row(
                        children: [
                          Image.network(
                            snapshot.data![index].image!,
                            width: 140,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![index].title!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Published at : ${snapshot.data![index].publishedAt!.substring(0, 10)}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
            },
            separatorBuilder: (context, index) => const Divider(),
          );
        },
      ),
    );
  }
}

Future<List<Article>> getData() async {
  List<Article> articles = [];

  try {
    http.Response response = await http.get(Uri.parse(url + apiKey));
    print('status code :  ${response.statusCode}');

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      News news = News.fromJson(jsonData);
      articles = news.articles!;
    }
    if (response.statusCode == 403) {
      const SnackBar(
          content: Text(
              'Forbidden -- You have reached your daily quota, the next reset is at 00:00 UTC.'));
    }
  } on HttpException catch (e) {
    print('http error : ${e.message}');
    SnackBar(content: Text(e.message));
  }
  return articles;
}
