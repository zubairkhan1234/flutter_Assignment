
import 'package:flutter/material.dart';


class VerticalProductCart extends StatefulWidget {
  final Map prodtuctItem ;
  const VerticalProductCart({super.key, required this.prodtuctItem});

  @override
  State<VerticalProductCart> createState() => _VerticalProductCartState();
}

class _VerticalProductCartState extends State<VerticalProductCart> {
  @override
  Widget build(BuildContext context) {
    return const Text("Hello VerticleCart");
  }
}
