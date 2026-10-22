import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {

  final _bbController = TextEditingController();
  final _tbController = TextEditingController();

  double? _hasilBMI;
  String _keterangan = 'Silakan Masukan Data Anda! ';

  void _hitung BMI(){
    final double bb = double.tryParse(_bbController.text) ?? 0;
    final double tbinCm = double.tryParse(_tbController.text) ?? 0;

    setState(() {
      if(bb > 0 && tbinCm > 0){
        final double tbInM = tbinCm / 100;
        final double bmi = bb / (tbInM * tbInM);

        _hasilBMI = bmi;
        if(bmi < 18.5){
          _keterangan = 'Kurus Kureng';

        }else if(bmi < 25){
          _keterangan = 'Madep Ideal';

        }else if(bmi < 30){
          _keterangan = 'Gemuk';

        }else {
          _keterangan = 'obesitas!!!';

        }else {
          _hasilBMI = null;
          _keterangan = 'Masukan Data Yang Valid';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
           'kalkulator BMI',
           style: TextStyle(
            color: Colors.white,
            fontWeight: .bold,
            letterSpacing: 8
           ),

        ),
       leading: Icon(Icons.calculate),
       centerTitle: true,
       backgroundColor: const Color.fromARGB(255, 43, 0, 255),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              TextField(
                controller: _bbController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  icon: Icon(Icons.monitor_weight),
                  labelText: 'Berat Badan',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)
                  )
                ),
              ),

              SizedBox(height: 15,),

              TextField(
                controller: _tbController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  icon: Icon(Icons.monitor_weight),
                  labelText: 'Tinggi Badan',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)
                  )
                ),
              ),
              SizedBox(height: 10,),

              ElevatedButton(
              onPressed: () => Alignment.bottomCenter, 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 38, 0, 255),
                padding: EdgeInsets.symmetric(vertical: 10)
              ),
              child: Text(
                'Hitung BMI',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 254, 254)
                ),
              )
              ),

              SizedBox(height: 15,),
              Text(
                'Hasil BMI :',
                textAlign: .center,

              ),

              SizedBox(height: 15,),

              Container(
                height: 500,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Text('Nilai BMI',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: .bold
                    ),
                    ),
                    SizedBox(height: 15,),

                    Text('Keterangan',
                    style: TextStyle(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 17, 0, 255)
                    ),)
                    
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}