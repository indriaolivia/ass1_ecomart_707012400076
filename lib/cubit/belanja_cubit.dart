import 'package:flutter_bloc/flutter_bloc.dart';

class BelanjaCubit extends Cubit<int> {
  BelanjaCubit() : super(0);

  void tambahBarang() {
    emit(state + 1);
  }
  }
