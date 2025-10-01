import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/views/widgets/circularContainer.dart';
import 'package:ecomapp/views/widgets/curved/curved_widget.dart';
import 'package:flutter/material.dart';

class Tprimaryheadercontainer extends StatelessWidget {
  final Widget child;

  const Tprimaryheadercontainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CurvedWidget(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(color: PrimaryColor),
        child: Stack(
          children: [
            // Background bentuk lingkaran blur
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                width: 100,
                height: 50,
                backgroundColor: PrimaryColor.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 150,
              right: 100,
              child: CircularContainer(
                width: 100,
                height: 50,
                backgroundColor: PrimaryColor.withOpacity(0.1),
              ),
            ),

            // Konten utama di atas background
            child,
          ],
        ),
      ),
    );
  }
}
