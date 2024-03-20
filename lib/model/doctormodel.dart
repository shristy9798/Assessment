import 'package:flutter/material.dart';

class doctor {
  String name;
  String specialization;
  String image;
  double rating;
  String hospital;
  Color backgroundColor;
  doctor({
    required this.name,
    required this.specialization,
    required this.image,
    required this.rating,
    required this.hospital,
    required this.backgroundColor,
  });
}