import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostsProvider with ChangeNotifier {
  List<dynamic> _posts = [];

  List<dynamic> get posts => _posts;

  Future<void> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      _posts = jsonDecode(response.body);
      notifyListeners();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<PostsProvider>(context, listen: false).fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    final postsProvider = Provider.of<PostsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: ListView.builder(
        itemCount: postsProvider.posts.length,
        itemBuilder: (context, index) {
          final post = postsProvider.posts[index];
          return ListTile(
            title: Text(post['title']),
            subtitle: Text(post['body']),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostsProvider()),
      ],
      child: MaterialApp(
        home: PostsScreen(),
      ),
    ),
  );
}
