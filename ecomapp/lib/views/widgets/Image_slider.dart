import 'package:ecomapp/const/appBar.dart';
import 'package:ecomapp/const/circular_icon.dart';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/const/image.dart';
import 'package:ecomapp/const/rounded_image.dart';
import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:ecomapp/views/widgets/curved/curved_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Image_slider extends StatelessWidget {
  const Image_slider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return CurvedWidget(
      child: Container(
        color: dark ? Colors.grey : Colors.white,
        child: Stack(
          children: [
            SizedBox(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(16.0 * 2),
                  child: Center(
                      child: Image(
                          image:
                              AssetImage(assetsimage.productimage4))),
                )),
            Positioned(
              right: 0,
              bottom: 30,
              left: 24.0,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: 20,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => RoundedImage(
                      width: 80,
                      backGroundColor: dark ? Colors.black : Colors.white,
                      border: Border.all(color: PrimaryColor),
                      padding: EdgeInsets.all(8.0),
                      imageUrl: assetsimage.productimage5),
                ),
              ),
            ),
            //appbar icon
            const TAppbar(
              showBackArrow:true,
              actions:[
                CircularIcon(icon: CupertinoIcons.heart,color: Colors.red,)
              ]
            )
          ],
        ),
      ),
    );
  }
}