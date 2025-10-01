import 'dart:convert';
import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/views/home_view.dart';
import 'package:ecomapp/views/login_view.dart';
import 'package:ecomapp/views/widgets/ButtonWidget.dart';
import 'package:ecomapp/views/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text("Register Akun",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("Isi detail data akun anda",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    TextFieldWidget(
                      controller: nameController,
                      hintText: 'Lionel Sapa',
                      text: 'Name',
                    ),
                    const SizedBox(height: 14),
                    TextFieldWidget(
                      controller: emailController,
                      hintText: 'xyz@gmail.com',
                      text: 'Email Address',
                    ),
                    const SizedBox(height: 14),
                    TextFieldWidget(
                      controller: passwordController,
                      hintText: '*********',
                      text: 'Password',
                      isPassword: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text('Register', style: TextStyle(
                          color: Colors.white,
                        ),),
                        onPressed: () async {
                          print('clicked');
                          final name = nameController.text.trim();
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();

                          if (name.isEmpty ||
                              email.isEmpty ||
                              password.isEmpty) {
                            Get.snackbar('Error', 'Semua field harus diisi');
                            return;
                          }
                          try {
                            final response = await http.post(
                              Uri.parse('http://localhost:8000/api/register'),
                              headers: {'Content-Type': 'application/json','Accept':'application/json'},
                              body: jsonEncode({
                                'name': name,
                                'email': email,
                                'password': password,
                              }),
                            );
                            final data = jsonDecode(response.body);
                            if (response.statusCode == 200 &&
                                data['status'] == 'success') {
                              Get.snackbar('Berhasil', 'Akun berhasil dibuat');
                              Get.to(() => const LoginView());
                            } else {
                              Get.snackbar('Gagal',
                                  data['message'] ?? 'Terjadi kesalahan');
                            }
                          } catch (e) {
                            print('ERROR: $e');
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
                      
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => Get.back(),
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                child: const Text('Sudah Punya Akun?, LOGIN',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
