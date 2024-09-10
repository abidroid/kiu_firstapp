import 'package:flutter/material.dart';

import '../data_store/datastore.dart';
import '../models/doctor.dart';

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


                  ],
                ),
              ),
            );
          }),
    );
  }
}
