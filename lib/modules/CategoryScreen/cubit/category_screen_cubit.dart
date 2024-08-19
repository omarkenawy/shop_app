import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_screen_state.dart';

class CategoryScreenCubit extends Cubit<CategoryScreenState> {
  CategoryScreenCubit() : super(CategoryScreenInitial());
}
