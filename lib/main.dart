import 'package:bloc/bloc.dart';
import 'package:e_commerce/bloc_observer/my_bloc_observer.dart';
import 'package:e_commerce/layout/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main (){
  Bloc.observer = MyBlocObserver();
  runApp(ECommerce());
}

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder:(context, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Home.routeName,
          routes: {
            Home.routeName: (context) => Home(),

          },
        );
      },


    );
  }
}
