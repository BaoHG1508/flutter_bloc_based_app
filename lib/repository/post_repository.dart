import 'package:bloccounter/model/product_model.dart';
import 'package:bloccounter/services/post/post_service.dart';
import 'package:get_it/get_it.dart';

class PostRepository {
  final PostService _postService = GetIt.I<PostService>();

  Future<List<Products>> getPostService() async {
    return await _postService.getProducts();
  }
}
