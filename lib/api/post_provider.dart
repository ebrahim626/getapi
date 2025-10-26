
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getapi/model/post_model.dart';
import 'package:http/http.dart' as http;

final postProvider = FutureProvider<List<PostModel>>((ref) async {
  try{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if(response.statusCode == 200){
      return ;
    }else {
      throw 'Something went wrong.';
    }
  }catch(e){
    rethrow;
  }
});