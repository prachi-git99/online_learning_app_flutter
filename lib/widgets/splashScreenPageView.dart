import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learninig_app/consts/consts.dart';

Widget SplashScreenPageView(int index , BuildContext context, String buttonText , String title , String subtitle,String imagePath){
  return Column(
    children: [
      SizedBox(
        width: 345.w,
        height: 345.w,
        child: Image.asset(imagePath,fit: BoxFit.cover,),
      ),
      Container(
        child: Text(
          title,
          style: TextStyle(
              color: black,
              fontSize: 24.sp,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 30.w,right: 30.w),
        width: 375.w,
        child: Text(
          subtitle,
          style: TextStyle(
              color: black.withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal
          ),
        ),
      ),

      //button
      GestureDetector(
        onTap: (){
          if(index<3){
            //animation
          }else{

          }
        },
        child: Container(
          width: 325.w,
          height: 50.h,
          margin: EdgeInsets.only(top: 100.h,left: 25.w,right: 25.w),
          decoration: BoxDecoration(
            color: blue,
            borderRadius: BorderRadius.all(Radius.circular(15.w)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0,1)
              )
            ],
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal
              ),
            ),
          ),

        ),
      ),
    ],
  );
}