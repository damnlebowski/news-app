import 'package:flutter/material.dart';
import 'package:news_app/models/news/news.dart';
import 'package:news_app/utils/functions_and_list.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.data});

  final Article data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 12),
          child: Column(
            children: [
              Stack(children: [
                Image.network(width: double.infinity, data.image!),
                Positioned(
                  bottom: 30,
                  left: 25,
                  right: 10,
                  child: Text(
                    textAlign: TextAlign.left,
                    data.title!,
                    style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [Shadow(color: Colors.black, blurRadius: 22)]),
                  ),
                ),
              ]),
              SizedBox(
                height: 30,
                child: Center(
                    child: Row(
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    const Icon(Icons.access_time),
                    Text(
                      '  ${data.publishedAt}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                data.description!,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                data.content!,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await launchWebsite(data.url!);
                  },
                  child: const Text('Read more'))
            ],
          ),
        ),
      ),
    );
  }
}
