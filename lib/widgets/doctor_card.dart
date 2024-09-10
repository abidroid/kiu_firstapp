import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                  height: 150,
                  width: 150,
                  fit: BoxFit.fill,
                  doctor.photo),
            ),

            Text(
              doctor.name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            Text(
              doctor.spe,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Fee: Rs.${doctor.fee}/-',
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            Text(
              textAlign: TextAlign.center,
              doctor.clinicAddress,
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            Text(
              textAlign: TextAlign.center,
              doctor.clinicTime ?? 'Not Set Yet',
              style: TextStyle(
                fontSize: 20,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
