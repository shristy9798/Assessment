import 'package:assessment/model/doctormodel.dart';
import 'package:flutter/material.dart';


class DoctorData {
  late List<doctor> favdoctors;
  late List<doctor> doctors;

  DoctorData() {
    favdoctors = [
      doctor(
        name: 'Dr. Priyanka',
        specialization: 'Dentist',
        image: 'assets/images/priyanka.png',
        rating: 5.0,
        hospital: 'City Hospital',
        backgroundColor: const Color(0xffededef),
      ),
      doctor(
        name: 'Dr. Trupti Lad',
        specialization: 'Dentist',
        image: 'assets/images/trupti.webp',
        rating: 5.0,
        hospital: 'Ketaki Hospital',
        backgroundColor: const Color(0xffededef),
      ),
      doctor(
        name: 'Dr. Ramesh',
        specialization: 'General',
        image: 'assets/images/ramesh.png',
        rating: 4.9,
        hospital: 'Wadia Hospital',
        backgroundColor: const Color(0xffededef),
      ),
      doctor(
        name: 'Dr. Vijay Dk',
        specialization: 'ENT Specialist',
        image: 'assets/images/vijay.webp',
        rating: 4.8,
        hospital: 'JK Hospital',
        backgroundColor: const Color(0xffededef),
      ),
    ];

    doctors = [
      doctor(
        name: 'Dr. Priti Waje',
        specialization: 'Dentist',
        image: 'assets/images/priti.png',
        rating: 5.0,
        hospital: 'TATA Hospital',
        backgroundColor: Colors.blue.shade100,
      ),
      doctor(
        name: 'Dr. Angai Parab',
        specialization: 'General Doctor',
        image: 'assets/images/trupti.webp',
        rating: 5.0,
        hospital: 'CT Hospital',
        backgroundColor: Colors.teal.shade100,
      ),
      doctor(
        name: 'Dr. Pritam Jadhav',
        specialization: 'ENT Specialist',
        image: 'assets/images/pritam.png',
        rating: 4.9,
        hospital: 'City Hospital',
        backgroundColor: Colors.lime.shade100,
      ),
      doctor(
        name: 'Dr. Suresh Prabhu',
        specialization: 'Cardiologist',
        image: 'assets/images/vijay.webp',
        rating: 4.9,
        hospital: 'JK Hospital',
        backgroundColor: Colors.purple.shade100,
      ),
      doctor(
        name: 'Dr. Prachi Patil',
        specialization: 'Cardiologist',
        image: 'assets/images/prachi.png',
        rating: 4.9,
        hospital: 'JK Hospital',
        backgroundColor: Colors.red.shade100,
      ),
    ];
  }
}