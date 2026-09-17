import 'package:flutter/material.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() =>
      _RegisterScreenState();
}

class _RegisterScreenState
    extends State<RegisterScreen> {

  final TextEditingController nameController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool hidePassword = true;
  bool hideConfirmPassword = true;

  void createAccount() {
    if (nameController.text.trim().isEmpty ||
        emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty ||
        confirmPasswordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all the fields'),
        ),
      );
      return;
    }

    if (passwordController.text !=
        confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match'),
        ),
      );
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Widget inputField({
    required String label,
    required String hint,
    required IconData icon,
    required TextEditingController controller,
    bool password = false,
    bool hide = false,
    VoidCallback? onVisibilityTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 8),

        TextField(
          controller: controller,
          obscureText: password && hide,

          decoration: InputDecoration(
            hintText: hint,

            prefixIcon: Icon(
              icon,
              color: const Color(0xFF43A047),
            ),

            suffixIcon: password
                ? IconButton(
                    onPressed: onVisibilityTap,
                    icon: Icon(
                      hide
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                  )
                : null,

            filled: true,
            fillColor: const Color(0xFFF6F9F6),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9F5),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Register header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(
                25,
                55,
                25,
                30,
              ),

              decoration: const BoxDecoration(
                color: Color(0xFF2E7D32),

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
              ),

              child: Column(
                children: [
                  Container(
                    width: 75,
                    height: 75,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(24),
                    ),

                    child: const Icon(
                      Icons.person_add_alt_1_rounded,
                      size: 40,
                      color: Color(0xFF43A047),
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'Create your account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    'Start building healthier medicine habits.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),

              child: Container(
                padding: const EdgeInsets.all(24),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 18,
                      offset: const Offset(0, 7),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [
                    const Text(
                      'Personal details',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    inputField(
                      label: 'Full Name',
                      hint: 'Enter your name',
                      icon: Icons.person_outline_rounded,
                      controller: nameController,
                    ),

                    const SizedBox(height: 17),

                    inputField(
                      label: 'Email Address',
                      hint: 'you@example.com',
                      icon: Icons.mail_outline_rounded,
                      controller: emailController,
                    ),

                    const SizedBox(height: 17),

                    inputField(
                      label: 'Password',
                      hint: 'Create a password',
                      icon: Icons.lock_outline_rounded,
                      controller: passwordController,
                      password: true,
                      hide: hidePassword,
                      onVisibilityTap: () {
                        setState(() {
                          hidePassword =
                              !hidePassword;
                        });
                      },
                    ),

                    const SizedBox(height: 17),

                    inputField(
                      label: 'Confirm Password',
                      hint: 'Re-enter your password',
                      icon: Icons.verified_user_outlined,
                      controller:
                          confirmPasswordController,
                      password: true,
                      hide: hideConfirmPassword,
                      onVisibilityTap: () {
                        setState(() {
                          hideConfirmPassword =
                              !hideConfirmPassword;
                        });
                      },
                    ),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 54,

                      child: ElevatedButton(
                        onPressed: createAccount,

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
                          'Create Account',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,

                      children: [
                        const Text(
                          'Already have an account? ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const LoginScreen(),
                              ),
                            );
                          },

                          child: const Text(
                            'Sign In',
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

            const Padding(
              padding: EdgeInsets.only(
                bottom: 20,
              ),
              child: Text(
                'Your medicines, organized your way.',
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