import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorDetailScreen extends StatelessWidget {
  final Doctor doctor;

  const DoctorDetailScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Details'),
      ),
      body: ListView(
        children: [
          Hero(
            tag: doctor.photo,
            child: Image.asset(
              doctor.photo,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            textAlign: TextAlign.center,
            doctor.name, style: TextStyle(fontSize: 30),),
          const SizedBox(height: 20,),
          Text(doctor.spe, style: TextStyle(fontSize: 30),),
          const SizedBox(height: 20,),
          Text(doctor.clinicAddress, style: TextStyle(fontSize: 30),),
          const SizedBox(height: 20,),
          Text(doctor.fee.toString(), style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
