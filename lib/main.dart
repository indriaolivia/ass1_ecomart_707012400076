import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'cubit/belanja_cubit.dart';
import 'pages/beranda_page.dart';
import 'providers/produk_favorit_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProdukFavorit(),
      child: BlocProvider(
        create: (context) => BelanjaCubit(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenShop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const BerandaPage(),
    );
  }
}