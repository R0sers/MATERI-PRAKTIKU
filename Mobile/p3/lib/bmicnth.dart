// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: BMIScreen(),
//   ));
// }

// class BMIScreen extends StatefulWidget {
//   const BMIScreen({super.key});

//   @override
//   State<BMIScreen> createState() => _BMIScreenState();
// }

// class _BMIScreenState extends State<BMIScreen> {
//   final _bbController = TextEditingController();
//   final _tbController = TextEditingController();

//   double? _hasilBMI;
//   String _keterangan = "Silakan masukkan data Anda";
//   Color _warnaKeterangan = Colors.blueGrey;
//   IconData _iconKeterangan = Icons.info_outline;

//   void _hitungBMI() {
//     // Membersihkan input dari spasi atau koma (mengubah koma jadi titik untuk format double)
//     final String bbText = _bbController.text.replaceAll(',', '.');
//     final String tbText = _tbController.text.replaceAll(',', '.');

//     final double bb = double.tryParse(bbText) ?? 0;
//     final double tbCm = double.tryParse(tbText) ?? 0;

//     setState(() {
//       if (bb > 0 && tbCm > 0) {
//         final double tbM = tbCm / 100;
//         final double bmi = bb / (tbM * tbM);
//         _hasilBMI = bmi;

//         // Logika kategori BMI & Penyesuaian Warna Dinamis
//         if (bmi < 18.5) {
//           _keterangan = "Kekurangan Berat Badan (Underweight)";
//           _warnaKeterangan = const Color(0xFF2196F3); // Biru cerah
//           _iconKeterangan = Icons.trending_down;
//         } else if (bmi >= 18.5 && bmi < 25) {
//           _keterangan = "Berat Badan Ideal (Normal)";
//           _warnaKeterangan = const Color(0xFF4CAF50); // Hijau segar
//           _iconKeterangan = Icons.check_circle_outline;
//         } else if (bmi >= 25 && bmi < 30) {
//           _keterangan = "Berat Badan Berlebih (Overweight)";
//           _warnaKeterangan = const Color(0xFFFF9800); // Oranye peringatan
//           _iconKeterangan = Icons.warning_amber_rounded;
//         } else {
//           _keterangan = "Obesitas (Waktunya Hidup Sehat!)";
//           _warnaKeterangan = const Color(0xFFF44336); // Merah perhatian
//           _iconKeterangan = Icons.error_outline;
//         }
//       } else {
//         _hasilBMI = null;
//         _keterangan = "Masukkan angka berat & tinggi yang valid!";
//         _warnaKeterangan = Colors.grey;
//         _iconKeterangan = Icons.help_outline;
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _bbController.dispose();
//     _tbController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF8FAFC),
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: const Color(0xFF6366F1), // Warna ungu indigo modern
//         title: const Text(
//           'Kalkulator BMI Modern',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 1,
//           ),
//         ),
//         leading: const Icon(Icons.monitor_weight, color: Colors.white),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // Bagian Kartu Input
//               Card(
//                 elevation: 6,
//                 shadowColor: Colors.indigo.withOpacity(0.2),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(22.0),
//                   child: Column(
//                     children: [
//                       const Text(
//                         'Masukkan Data Tubuh Anda',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF334155),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       TextField(
//                         controller: _bbController,
//                         keyboardType: const TextInputType.numberWithOptions(decimal: true),
//                         decoration: InputDecoration(
//                           labelText: 'Berat Badan',
//                           hintText: 'Contoh: 65',
//                           suffixText: 'kg',
//                           prefixIcon: const Icon(Icons.line_weight, color: Color(0xFF6366F1)),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                             borderSide: const BorderSide(color: Color(0xFF6366F1), width: 2),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       TextField(
//                         controller: _tbController,
//                         keyboardType: const TextInputType.numberWithOptions(decimal: true),
//                         decoration: InputDecoration(
//                           labelText: 'Tinggi Badan',
//                           hintText: 'Contoh: 170',
//                           suffixText: 'cm',
//                           prefixIcon: const Icon(Icons.height, color: Color(0xFF6366F1)),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                             borderSide: const BorderSide(color: Color(0xFF6366F1), width: 2),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 24),

//               // Tombol Hitung Bergaya Gradasi
//               DecoratedBox(
//                 decoration: BoxDecoration(
//                   gradient: const LinearGradient(
//                     colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
//                   ),
//                   borderRadius: BorderRadius.circular(14),
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color(0xFF6366F1).withOpacity(0.4),
//                       blurRadius: 10,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: ElevatedButton.icon(
//                   onPressed: _hitungBMI,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.transparent,
//                     shadowColor: Colors.transparent,
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                   ),
//                   icon: const Icon(Icons.calculate_rounded, size: 26),
//                   label: const Text(
//                     'Hitung BMI Sekarang',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 30),

//               // Bagian Hasil Output dengan Warna Dinamis
//               AnimatedContainer(
//                 duration: const Duration(milliseconds: 400),
//                 padding: const EdgeInsets.all(24),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.white,
//                   border: Border.all(color: _warnaKeterangan.withOpacity(0.4), width: 2),
//                   boxShadow: [
//                     BoxShadow(
//                       color: _warnaKeterangan.withOpacity(0.15),
//                       blurRadius: 15,
//                       offset: const Offset(0, 6),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     const Text(
//                       'Skor BMI Anda',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.grey,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       _hasilBMI != null ? _hasilBMI!.toStringAsFixed(1) : '0.0',
//                       style: TextStyle(
//                         fontSize: 48,
//                         fontWeight: FontWeight.bold,
//                         color: _warnaKeterangan,
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                       decoration: BoxDecoration(
//                         color: _warnaKeterangan.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(_iconKeterangan, color: _warnaKeterangan),
//                           const SizedBox(width: 8),
//                           Flexible(
//                             child: Text(
//                               _keterangan,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: _warnaKeterangan,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }