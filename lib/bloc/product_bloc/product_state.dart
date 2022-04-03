part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductLoading extends ProductState {}

class ProductEmpty extends ProductState {}

class ProductPostSucceed extends ProductState {
  final List<Products> products;

  const ProductPostSucceed({required this.products});

  @override
  List<Object> get props => [products];
}

class ProductGetFailed extends ProductState {}
