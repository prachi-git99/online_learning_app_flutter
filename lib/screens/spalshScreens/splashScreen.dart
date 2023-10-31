import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learninig_app/consts/consts.dart';
import 'package:online_learninig_app/screens/spalshScreens/bloc/splash_screen_bloc.dart';
import 'package:online_learninig_app/screens/spalshScreens/bloc/splash_screen_event.dart';
import 'package:online_learninig_app/screens/spalshScreens/bloc/splash_screen_state.dart';
import 'package:online_learninig_app/widgets/splashScreenPageView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<SplashScreenBloc, SplashScreenState>(
          builder: (context, state) {
            return Container(
              width: 375.w,
              margin: EdgeInsets.only(top: 37.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    onPageChanged: (index){
                      state.page = index;
                      BlocProvider.of<SplashScreenBloc>(context).add(SplashScreenEvent());
                    },
                    children: [
                      SplashScreenPageView(1, context, buttonText, Sp_1_title,
                          Sp_1_subtitle, "assets/images/sp_1_img.png"),
                      SplashScreenPageView(2, context, buttonText, Sp_2_title,
                          Sp_2_subtitle, "assets/images/sp_2_img.png"),
                      SplashScreenPageView(3, context, getStarted, Sp_3_title,
                          Sp_3_subtitle, "assets/images/sp_3_img.png"),
                    ],
                  ),
                  Positioned(
                    bottom: 80.h,
                    child: DotsIndicator(
                      position: state.page,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: blue,
                        size: Size.square(8.0),
                        activeSize: Size(18.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
