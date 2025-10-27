import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getapi/api/post_provider.dart';
import 'package:getapi/model/post_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final PostModel postModel = PostModel(body: 'sdf');
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Get Api')),),
      body: ListView.builder(itemBuilder: (builder, index){
        final data = ref.watch(postProvider);
        return ListTile(title: Text(), );
      }),
    );
  }
}
