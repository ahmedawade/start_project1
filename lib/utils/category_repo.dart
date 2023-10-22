import 'package:dio/dio.dart';
import 'package:start_project1/utils/category_model.dart';
class categoryRepo {

  static Future<Categorymodel> getcategories() async {
    final Dio dio = Dio(
        BaseOptions(
            baseUrl: "https://student.valuxapps.com/api/"
        )
    );
    final response = await dio.get('https://student.valuxapps.com/api/categories');
    final category = Categorymodel.fromJson(response.data);
    print(category.data.data[1].id);
    return category;
  }
}