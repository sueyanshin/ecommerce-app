import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/core/config/assets/app_vector.dart';
import 'package:ecommerce_app/core/config/theme/app_colors.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup.dart';
import 'package:ecommerce_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerce_app/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          AppNavigator.pushReplacement(context, const SignupPage());
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: SvgPicture.asset(AppVectors.appLogo),
      ),
    );
  }
}
