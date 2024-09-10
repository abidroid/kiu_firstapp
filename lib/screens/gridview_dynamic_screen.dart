import 'package:flutter/material.dart';

import '../data_store/datastore.dart';
import '../models/doctor.dart';
import '../widgets/doctor_card.dart';

class GridviewDynamicScreen extends StatelessWidget {
  const GridviewDynamicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dyamic GridView'),
      ),
      body: GridView.builder(
          itemCount: doctors.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 400,
          ),
          itemBuilder: (BuildContext context, int index) {

            Doctor doctor = doctors[index];

            return DoctorCard(doctor: doctor);
          }),
    );
  }
}
