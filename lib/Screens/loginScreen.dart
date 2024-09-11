import 'package:cooking_app/Screens/home.dart';
import 'package:cooking_app/constants/appColor.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool hiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 300),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          fillColor: Color.fromARGB(255, 240, 231, 231),
                          filled: true,
                        ),
                        validator: (username) {
                          if (username == null ||username.isEmpty) {
                            return "Username is required";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          fillColor: Color.fromARGB(255, 240, 231, 231),
                          filled: true,
                        ),
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return "Email is required";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key),
                            hintText: "Password",
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            fillColor: Color.fromARGB(255, 240, 231, 231),
                            filled: true,
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    hiddenPassword = !hiddenPassword;
                                  });
                                },
                                child: hiddenPassword
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility))),
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return "Password is required";
                          }
                          return null;
                        },
                        obscureText: hiddenPassword,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(100, 50),
                                backgroundColor: kMainColor),
                            onPressed: () {
                              if (formKey.currentState!.validate())
                              {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));}
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
