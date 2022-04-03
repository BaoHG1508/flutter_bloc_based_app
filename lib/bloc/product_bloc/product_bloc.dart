import 'package:bloccounter/repository/post_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../model/product_model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductPostEvent, ProductState> {
  final PostRepository postRepository = GetIt.I<PostRepository>();

  ProductBloc() : super(ProductLoading()) {
    on<GetProductsPosts>((event, emit) async {
      emit(ProductLoading());
      await postRepository
          .getPostService()
          .then((value) => value.isNotEmpty
              ? emit(ProductPostSucceed(products: value))
              : emit(ProductEmpty()))
          .onError((error, stackTrace) {
        emit(ProductGetFailed());
      });
    });
  }
}
