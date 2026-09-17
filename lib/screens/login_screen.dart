import 'package:flutter/material.dart';
import 'register_screen.dart';
import '../navigation/main_navigation_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  bool hidePassword = true;

  void login() {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter email and password'),
        ),
      );
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            const MainNavigationScreen(),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9F5),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top design
            Container(
              width: double.infinity,
              height: 285,

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF2E7D32),
                    Color(0xFF66BB6A),
                  ],
                ),

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                  bottomRight: Radius.circular(55),
                ),
              ),

              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),

                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [
                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Container(
                            width: 58,
                            height: 58,

                            decoration: BoxDecoration(
                              color: Colors.white
                                  .withOpacity(0.2),
                              borderRadius:
                                  BorderRadius.circular(18),
                            ),

                            child: const Icon(
                              Icons.medication_rounded,
                              color: Colors.white,
                              size: 34,
                            ),
                          ),

                          const Spacer(),

                          Container(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),

                            decoration: BoxDecoration(
                              color: Colors.white
                                  .withOpacity(0.18),
                              borderRadius:
                                  BorderRadius.circular(20),
                            ),

                            child: const Text(
                              'HEALTH',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight:
                                    FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),

                      const Text(
                        'Your health,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const Text(
                        'on schedule.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Stay consistent. Stay healthy.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ),

            // Login card
            Transform.translate(
              offset: const Offset(0, -25),

              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                padding: const EdgeInsets.all(24),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [
                    const Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF263238),
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      'Sign in to manage your medicines.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Email Address',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 8),

                    TextField(
                      controller: emailController,

                      keyboardType:
                          TextInputType.emailAddress,

                      decoration: InputDecoration(
                        hintText: 'you@example.com',

                        prefixIcon: const Icon(
                          Icons.mail_outline_rounded,
                          color: Color(0xFF43A047),
                        ),

                        filled: true,
                        fillColor:
                            const Color(0xFFF6F9F6),

                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    const Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 8),

                    TextField(
                      controller: passwordController,

                      obscureText: hidePassword,

                      decoration: InputDecoration(
                        hintText: 'Enter your password',

                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Color(0xFF43A047),
                        ),

                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword =
                                  !hidePassword;
                            });
                          },

                          icon: Icon(
                            hidePassword
                                ? Icons
                                    .visibility_off_outlined
                                : Icons
                                    .visibility_outlined,
                            color: Colors.grey,
                          ),
                        ),

                        filled: true,
                        fillColor:
                            const Color(0xFFF6F9F6),

                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 54,

                      child: ElevatedButton(
                        onPressed: login,

                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF43A047),
                          foregroundColor: Colors.white,

                          elevation: 0,

                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16),
                          ),
                        ),

                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 22),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,

                      children: [
                        const Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegisterScreen(),
                              ),
                            );
                          },

                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Color(0xFF2E7D32),
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 5),

            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Simple reminders. Better habits.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}