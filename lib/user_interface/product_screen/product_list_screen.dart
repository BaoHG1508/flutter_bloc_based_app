import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../app_routes/app_pages.gr.dart';
import '../../bloc/product_bloc/product_bloc.dart';
import '../../model/product_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        leading: IconButton(
          icon: const Icon(Icons.admin_panel_settings),
          onPressed: () => GetIt.I<AppRouter>().pushNamed('/user'),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductEmpty) {
              return const Text('Oh no there\'s no product to show');
            } else if (state is ProductPostSucceed) {
              return ProductList(
                products: state.products,
              );
            } else if (state is ProductGetFailed) {
              return const Text('Oh no something\'s wrong');
            } else if (state is ProductLoading) {
              BlocProvider.of<ProductBloc>(context)
                  .add(const GetProductsPosts());
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({required this.products, Key? key}) : super(key: key);

  final List<Products> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(products[index].image ?? ""),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${products[index].title}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        '${products[index].description}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}
