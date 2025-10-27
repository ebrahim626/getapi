import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getapi/api/post_provider.dart';
import 'package:getapi/model/post_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final postList = ref.watch(postProvider);
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Get Api')),),
      body: postList.when(
          data: (data) => ListView.builder(
              itemBuilder: (builder,index){
                final post = data[index];
                return ListTile(title: Text(post.title ?? "No Title"),);
              }
          ),
          error: (error,stack)=> Text('error: $error'),
          loading: ()=> CircularProgressIndicator(),
      ),
    );
  }
}
