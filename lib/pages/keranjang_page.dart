import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/belanja_cubit.dart';

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Keranjang Belanja')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Jumlah Barang'),
            BlocBuilder<BelanjaCubit, int>(
              builder: (context, jumlah) {
                return Text(
                  '$jumlah',
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<BelanjaCubit>().kurangiBarang();
                  },
                  child: const Text('Kurangi'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<BelanjaCubit>().tambahBarang();
                  },
                  child: const Text('Tambah'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}