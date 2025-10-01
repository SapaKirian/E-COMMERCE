import 'package:ecomapp/views/function/Helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TAppbar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow? IconButton(onPressed: ()=> Get.back(), icon: Icon(CupertinoIcons.arrow_left,color: dark? Colors.white:Colors.black))
        : leadingIcon != null? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)):null,
        title: title,
        actions: actions,
      )
      );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); 
}
