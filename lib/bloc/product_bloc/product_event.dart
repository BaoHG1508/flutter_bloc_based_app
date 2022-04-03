part of 'product_bloc.dart';

abstract class ProductPostEvent extends Equatable {
  const ProductPostEvent();
}

class GetProductsPosts extends ProductPostEvent {
  const GetProductsPosts();

  @override
  List<Object> get props => [];
}
