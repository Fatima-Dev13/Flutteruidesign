import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice/view/page2.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool visible = false;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    print('width $width');

    print('height $height');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/one.jpeg',
            ),
            SizedBox(
              height: 20.sp,
            ),
            Image.asset(
              'assets/five.png',
              width: 180.sp,
              height: 180.sp,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home2();
                  }));
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(273.sp, 50.sp),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.sp),
                    ),
                    backgroundColor: Color.fromRGBO(31, 65, 187, 1),
                    foregroundColor: Colors.white)),
            SizedBox(
              height: 10.sp,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home2();
                }));
              },
              child: Text('Register'),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(
                      color: Color.fromRGBO(31, 65, 187, 1), width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.sp),
                  ),
                  fixedSize: Size(273.sp, 50.sp),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
