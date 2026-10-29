import 'package:flutter/material.dart';

class FormPemesananPage extends StatefulWidget {
  const FormPemesananPage({super.key});

  @override
  State<FormPemesananPage> createState() => _FormPemesananPageState();
}

class _FormPemesananPageState extends State<FormPemesananPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  String metodePengiriman = 'Diantar';
  bool setuju = false;

  void kirimPesanan() {
    if (setuju) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Pesanan berhasil dibuat')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Saya menyetujui pesanan ini')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Pemesanan')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: namaController,
            decoration: const InputDecoration(
              labelText: 'Nama Pembeli',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: alamatController,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Alamat Pengirirm',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          const Text('Metode Pengiriman'),
          RadioListTile<String>(
            title: const Text('Diantar'),
            value: 'Diantar',
            groupValue: metodePengiriman,
            onChanged: (value) {
              setState(() {
                metodePengiriman = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Ambil di Tempat'),
            value: 'Ambil di Tempat',
            groupValue: metodePengiriman,
            onChanged: (value) {
              setState(() {
                metodePengiriman = value!;
              });
            },
          ),
          Row(
            children: [
              Checkbox(
                value: setuju,
                onChanged: (value) {
                  setState(() {
                    setuju = value!;
                  });
                },
              ),
              const Text('Saya menyetujui pesanan ini'),
            ],
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: kirimPesanan,
            child: const Text('Pesan'),
          ),
        ],
      ),
    );
  }
}