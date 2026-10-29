import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/produk_favorit_provider.dart';

class FavoritPage extends StatelessWidget {
  const FavoritPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorit')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Jumlah Favorit'),
            Consumer<ProdukFavorit>(
              builder: (context, favorit, child) {
                return Text(
                  '${favorit.jumlahFavorit}',
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<ProdukFavorit>().tambahFavorit();
              },
              child: const Text('Tambah Favorit'),
            ),
          ],
        ),
      ),
    );
  }
}