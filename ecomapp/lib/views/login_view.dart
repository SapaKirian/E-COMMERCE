import 'dart:convert';
import 'package:ecomapp/views/favorite/favorite.dart';
import 'package:ecomapp/views/password_configuration/forgot_password.dart';
import 'package:ecomapp/views/widgets/navigation_menu.dart';
import 'package:http/http.dart' as http;
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/views/register_view.dart';
import 'package:ecomapp/views/widgets/ButtonWidget.dart';
import 'package:ecomapp/views/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecomapp/views/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  @override
  void dispose() {
    EmailController.dispose();
    PasswordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                "Hallo!!",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Selamat Datang Kembali",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Isi detail akun anda",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    TextFieldWidget(
                      controller: EmailController,
                      hintText: 'xyz@gmail.com',
                      text: 'Email Address',
                    ),
                    const SizedBox(height: 14),
                    TextFieldWidget(
                      controller: PasswordController,
                      hintText: '*********',
                      text: 'Password',
                      isPassword: true,
                      suffixIcon: IconButton(
                        onPressed: () {
                          print('Clicked');
                        },
                        icon: const Icon(Icons.visibility_off),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () => Get.to(() => const ForgotPassword()),
                          child: Text(
                            'Lupa Password?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[400],
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final email = EmailController.text.trim();
                        final password = PasswordController.text.trim();
                        if (email.isEmpty || password.isEmpty) {
                          Get.snackbar(
                              'error', 'email dan password harus diisi');
                          return;
                        }
                        try {
                          final response = await http.post(
                            Uri.parse('http://localhost:8000/api/login'),
                            headers: {'Content-Type': 'application/json'},
                            body: jsonEncode(
                                {'email': email, 'password': password}),
                          );
                          final data = jsonDecode(response.body);
                          if (response.statusCode == 200 &&
                              data['status'] == 'success') {
                            Get.snackbar('Sukses', 'Login Berhasil');
                            Get.to(() => Navigationbar(controller: NavigationController()));

                          } else {
                            Get.snackbar('Gagal Login',
                                data['message'] ?? 'terjadi kesalahan');
                          }
                        } catch (e) {
                          Get.snackbar(
                              'Error', 'Tidak dapat terhubung ke server');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PrimaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    print('Clicked');
                    Get.to(() => const RegisterView());
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Text(
                    'Pengguna Baru, Register',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
