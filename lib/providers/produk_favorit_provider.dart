import 'package:flutter/material.dart';

class ProdukFavorit extends ChangeNotifier {
  int jumlahFavorit = 0;

  void tambahFavorit() {
    jumlahFavorit++;
    notifyListeners();
  }
}