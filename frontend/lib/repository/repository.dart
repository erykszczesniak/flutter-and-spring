import 'package:blog_app/models/blog_post.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Repository {


  Future <List<BlogPost>> fetchPosts() async {
    String _baseUrl = "http://localhost:8080/api/posts/";
    var response = await http.get(Uri.parse(_baseUrl));
    return (json.decode(response.body)['data'] as List)
        .map((e) => BlogPost.fromJson(e))
        .toList();
  }


}