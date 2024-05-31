import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375.w,
          height: 54.h,
          color: Colors.white,
          child: Center(
            child: ListTile(
              leading: ClipOval(
                child: SizedBox(
                  width: 35.w,
                  height: 35.h,
                  child: Image.asset('images/person2.png'),
                ),
              ),
              title: Text(
                'username',
                style: TextStyle(
                  fontFamily: "rus",
                  fontSize: ScreenUtil().setSp(15),
                  height: 0.9,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'location',
                style: TextStyle(
                  fontSize: 11.sp,
                  height: 4.h,
                  fontFamily: "rus",
                ),
              ),
              trailing: const Icon(Icons.more_horiz),
            ),
          ),
        ),
        Container(
          width: 375.w,
          height: 375.h,
          child: Image.asset(
            'images/post.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 375.w,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 14.h),
              Row(
                children: [
                  SizedBox(width: 14.w),
                  Icon(
                    Icons.favorite_outline,
                    size: 25.w,
                  ),
                  SizedBox(width: 17.w),
                  Image.asset(
                    'images/send.png',
                    height: 28.h,
                  ),
                  const Spacer(),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.w,
                  top: 13.5.h,
                  bottom: 5.h,
                ),
                // child: Text(
                //   '0',
                //   textAlign: TextAlign.right,
                //   style: TextStyle(
                //     fontFamily: 'rus',
                //     fontSize: ScreenUtil().setSp(13),
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  children: [
                    Text(
                      'username' + '',
                      style: TextStyle(
                        fontFamily: 'rus',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'caption',
                    //   style: TextStyle(
                    //     fontFamily: 'rus',
                    //     fontSize: 13.sp,
                    //   ),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.w,
                  top: 20.h,
                  bottom: 8.h,
                ),
                // child: Text(
                //   'dateformat',
                //   style: TextStyle(
                //       fontFamily: 'rus', fontSize: 11.sp, color: Colors.grey),
                // ),
              )
            ],
          ),
        ),
      ],
    );
    ;
  }
}
