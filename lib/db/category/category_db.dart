import 'package:hive/hive.dart';
import '../../screens/models/category/category_model.dart';

const CATEGORY_DB_NAME = 'category-database';

abstract class CategoryDbFunctions {
  Future<List<CategoryModel>> getCategories();
  Future<void> insertCategory(CategoryModel value);

}
class CategoryDB implements CategoryDbFunctions {
  @override
  Future<void> insertCategory(CategoryModel value) async {
final categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
  categoryDB.add(value);
  }
  @override
  Future<List<CategoryModel>> getCategories() async {
    final categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    return categoryDB.values.toList();
  }
}