import 'package:http/http.dart';

class ProductService {
  final String baseUrl;
  const ProductService({required this.baseUrl});

    Future<Response> products() {
      return get(
        Uri.parse('$baseUrl/product')
      );
    }
  
}
