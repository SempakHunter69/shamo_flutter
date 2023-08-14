import 'package:flutter/material.dart';
import 'package:shamo_flutter/models/model_product.dart';
import 'package:shamo_flutter/services/service_product.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;
  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProducts();
      _products = products;
    } catch (error) {
      print(error);
    }
  }
}
