import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// events
abstract class PostsEvent {}

class FetchPostsEvent extends PostsEvent {}

// states
abstract class PostsState {}

class PostsLoadingState extends PostsState {}

class PostsLoadedState extends PostsState {
  final List<dynamic> posts;

  PostsLoadedState(this.posts);
}

class PostsErrorState extends PostsState {
  final String error;

  PostsErrorState(this.error);
}

// posts_bloc
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsLoadingState()) {
    on<FetchPostsEvent>(_onFetchPosts);
  }

  Future<void> _onFetchPosts(
      FetchPostsEvent event, Emitter<PostsState> emit) async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      if (response.statusCode == 200) {
        final posts = jsonDecode(response.body);
        emit(PostsLoadedState(posts));
      } else {
        emit(PostsErrorState('Failed to load posts'));
      }
    } catch (error) {
      emit(PostsErrorState(error.toString()));
    }
  }
}

// posts_screen
class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final PostsBloc _postsBloc = PostsBloc();

  @override
  void initState() {
    super.initState();
    _postsBloc.add(FetchPostsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: BlocBuilder<PostsBloc, PostsState>(
        bloc: _postsBloc,
        builder: (context, state) {
          if (state is PostsLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PostsLoadedState) {
            return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];
                return ListTile(
                  title: Text(post['title']),
                  subtitle: Text(post['body']),
                );
              },
            );
          } else if (state is PostsErrorState) {
            return Center(child: Text(state.error));
          } else {
            return Center(child: Text('Unknown state'));
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _postsBloc.close();
    super.dispose();
  }
}

void main() {
  runApp(
    BlocProvider(
      create: (context) => PostsBloc(),
      child: MaterialApp(
        home: PostsScreen(),
      ),
    ),
  );
}
