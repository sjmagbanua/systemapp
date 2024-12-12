import 'package:systemapp/models/models.dart';
import 'package:systemapp/services/service.dart';

  class ProductRepositories {
    final ProductService _productService;
    const ProductRepositories(this._productService);

   Future<Result> product() async{
    var result = await _productService.products;
    // var body = jsonDecode(result)
    // print('here $result');
    return Result();
    }
  }