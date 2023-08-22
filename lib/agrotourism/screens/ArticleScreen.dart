import 'package:flutter/material.dart';
import '../models/article_model.dart'; // Import your actual data models

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Articles'),
      ),
      body: FutureBuilder<List<Article>>(
        future: fetchArticlesLocally(), // Replace with your fetching method
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<Article> articles = snapshot.data!;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(articles[index].title),
                  subtitle: Text(articles[index].content),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<Article>> fetchArticlesLocally() async {
    // Simulate a delay, like you would have with a real API call
    await Future.delayed(Duration(seconds: 2));

    // Here, you would retrieve your article data from your local data source
    // Replace this with your actual data retrieval logic
    return [ // Replace with actual article data
      Article(1, 'Article 1', 'Content of Article 1'),
      Article(2, 'Article 2', 'Content of Article 2'),
    ];
  }
}
