import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kiu_firstapp/screens/doctor_detail_screen.dart';

import '../data_store/datastore.dart';
import '../models/doctor.dart';

class DoctorsListScreen extends StatelessWidget {
  const DoctorsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (context, index) {
              Doctor doctor = doctors[index];

              return GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return DoctorDetailScreen(doctor: doctor);
                  }));

                },
                child: SizedBox(
                  height: 200,
                  child: Card(

                    margin: const EdgeInsets.only(bottom: 20),
                    color: Colors.amber[100],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              doctor.photo,
                              width: 100,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text(doctor.name, style: TextStyle(fontSize: 20),),
                              Text(doctor.spe, style: TextStyle(fontSize: 20),),


                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
