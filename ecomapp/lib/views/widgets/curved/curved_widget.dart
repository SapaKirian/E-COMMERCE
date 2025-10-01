import 'package:ecomapp/const/CustomCurve.dart';
import 'package:ecomapp/views/widgets/curved/curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedWidget extends StatelessWidget {
  final Widget child;

  const CurvedWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: child,
      clipper: TCostumCurvedEdges(),
      
    );
  }
}
