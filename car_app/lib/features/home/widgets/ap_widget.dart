import 'package:car_app/core/resource/extensions/int_extension.dart';
import 'package:car_app/core/resource/extensions/list_extension.dart';
import 'package:car_app/core/resource/extensions/textstyles_extensions.dart';
import 'package:car_app/features/extensions/context_extension.dart';
import 'package:car_app/features/welcome/auth/screens/app_textstyles.dart';
import 'package:flutter/material.dart';

class ApWidget extends StatelessWidget {
  const ApWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
                  height: context.mq.height / 5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: 15.borderRadius,
                  ),
                ),
                Positioned(
                  left: -10,
                  bottom: -5,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.2)),
                  ),
                ),
                Positioned(
                  top: (context.mq.height / 5) * 0.3,
                  left: 35,
                  right: 0,
                  child: Container(
                    width: 62,
                    height: 65,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.2)),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  right: 45,
                  child: Container(
                    padding: 34.symmetricHorizontal,
                    decoration: BoxDecoration(
                        color: const Color(0xff988080),
                        borderRadius: 10.borderRadius),
                    child: Text(
                      'Try now',
                      style: AppTextstyles.semiBold
                          .setSize(11)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  top: (context.mq.height / 5) * 0.6,
                  right: 50,
                  child: Container(
                    width: 37,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.2)),
                  ),
                ),
                Padding(
                  padding: [12, 16].symmetricPadding,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '30%',
                            style: AppTextstyles.regular
                                .setSize(48)
                                .copyWith(color: Colors.white),
                          ),
                          Padding(
                            padding: 45.paddingOnlyLeft,
                            child: Text(
                              'Off',
                              style: AppTextstyles.regular
                                  .setSize(48)
                                  .copyWith(color: Color(0xffFCC21B)),
                            ),
                          )
                        ],
                      ),
                      16.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'THIS JULY',
                            style: AppTextstyles.regular
                                .setSize(22)
                                .copyWith(color: Colors.white),
                          ),
                          6.verticalSpace,
                          Text(
                            'Travel to the end of the world \nthis whole month \ncause we care when you are \nhappy',
                            style: AppTextstyles.regular
                                .setSize(10)
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            );
  }
}