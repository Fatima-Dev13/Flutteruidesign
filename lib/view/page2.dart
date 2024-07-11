import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home2 extends ConsumerStatefulWidget {
  const Home2({super.key});

  @override
  ConsumerState createState() => _Home2State();
}

class _Home2State extends ConsumerState<Home2> {
  bool isObcsure = true;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('Login Page'),
          // foregroundColor: Colors.white,
          // backgroundColor: Colors.blue,
          ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 35.sp,
                color: Color.fromRGBO(31, 65, 187, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your Email',
                          // prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter email' : null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 2.sp,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: isObcsure,
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObcsure = !isObcsure;
                              });
                            },
                            icon: isObcsure
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                          ),
                          labelText: 'Password',
                          hintText: 'enter your password',
                          // prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty
                              ? 'Please enter Password'
                              : null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 2.sp,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgat your Password',
                            style: TextStyle(
                              color: Color.fromRGBO(31, 65, 187, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(200.sp, 0.sp),
                        backgroundColor: Color.fromRGBO(31, 65, 187, 1),
                        foregroundColor: Colors.white,
                        surfaceTintColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          print('login succesful');
                        } else {
                          print('login unsuccesful');
                        }
                      },
                      child: Text('Login'),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Image.asset('assets/faceid.png'),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 12,
          ),
          // InkWell(
          //   onTap: () {},
          //   child: Text(
          //     'New User? Create Account',
          //     style:
          //         TextStyle(color: Colors.black54, fontWeight: FontWeight.w700),
          //   ),
          // ),
        ],
      ),
    );
  }
}
