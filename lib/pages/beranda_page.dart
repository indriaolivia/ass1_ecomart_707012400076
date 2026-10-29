import 'package:flutter/material.dart';

import 'favorit_page.dart';
import 'form_pemesanan_page.dart';
import 'produk_page.dart';
import 'keranjang_page.dart';
import 'lokasi_page.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EcoMart')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'EcoMart - Produk Daur Ulang',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Aplikasi Komunitas EcoMart Bandung untuk menghasilkan produk pengelohan sampah',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProdukPage(),
                    ),
                  );
                },
                child: const Text('Lihat Produk'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FormPemesananPage(),
                    ),
                  );
                },
                child: const Text('Form Pemesanan'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoritPage(),
                    ),
                  );
                },
                child: const Text('Favorit'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KeranjangPage(),
                    ),
                  );
                },
                child: const Text('Keranjang Belanja'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LokasiPage(),
                    ),
                  );
                },
                child: const Text('Lokasi Bank Sampah'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}