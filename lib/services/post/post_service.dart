import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/product_model.dart';

part 'post_service.g.dart';

@RestApi()
abstract class PostService {
  factory PostService(Dio dio) = _PostService;

  @GET('/products')
  Future<List<Products>> getProducts();
}
