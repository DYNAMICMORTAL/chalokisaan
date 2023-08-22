// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// class FarmNewsApp extends StatefulWidget {
//   @override
//   _FarmNewsAppState createState() => _FarmNewsAppState();
// }

// class _FarmNewsAppState extends State<FarmNewsApp> {
//   final String apiKey = '0dfea93e0b074c5c9efa798afb71e6ef';
//   final String apiUrl = 'https://newsapi.org/v2/top-headlines?country=in&apiKey=YOUR_API_KEY';

//   List<dynamic> newsArticles = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchNews();
//   }

//   Future<void> fetchNews() async {
//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       final jsonData = json.decode(response.body);
//       setState(() {
//         newsArticles = jsonData['articles'];
//       });
//     } else {
//       throw Exception('Failed to load news');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Farm News App'),
//         ),
//         body: ListView.builder(
//           itemCount: newsArticles.length,
//           itemBuilder: (context, index) {
//             final article = newsArticles[index];
//             return ListTile(
//               title: Text(article['title']),
//               subtitle: Text(article['description']),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => NewsWebView(article['url']),
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class NewsWebView extends StatelessWidget {
//   final String url;

//   NewsWebView(this.url);

//   @override
//   Widget build(BuildContext context) {
//     return WebviewScaffold(
//       appBar: AppBar(
//         title: Text('News Article'),
//       ),
//       url: url,
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class NewsApp extends StatefulWidget {
  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  final String apiKey = 'pub_28056137526d11324e3566267dc7de7a6a4c6'; // Replace with your Newsdata.io API key

  Future<List<News>> getNews() async {
    final url =
        'https://newsdata.io/api/1/news?apikey=$apiKey&country=in&size=5';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> articles = data['data'];

      return articles.map((article) {
        return News(
          title: article['title'],
          description: article['description'],
          url: article['link'],
          imageUrl: article['image_url'],
        );
      }).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('News App'),
        ),
        body: FutureBuilder<List<News>>(
          future: getNews(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final news = snapshot.data!;
              return NewsList(news: news);
            }
          },
        ),
      ),
    );
  }
}

class News {
  final String title;
  final String description;
  final String url;
  final String imageUrl;

  News({
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
  });
}

class NewsList extends StatelessWidget {
  final List<News> news;

  NewsList({required this.news});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        final article = news[index];
        return ListTile(
          title: Text(article.title),
          subtitle: Text(article.description),
          onTap: () {
            // Handle tap on a news article (e.g., open a web view)
          },
        );
      },
    );
  }
}
