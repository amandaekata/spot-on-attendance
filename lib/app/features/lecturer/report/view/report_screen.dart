import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/custom_button.dart';
import 'package:spot_on/app/features/lecturer/report/widgets/report_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('Report',style: AppTypography.appBar,),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              context.router.push(NotificationsRoute());
            },
            icon: ImageIcon(AssetImage(Assets.icons.bell.path), color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person_2_outlined, color: Colors.black,),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 50),
        child: Column(
          children: [
            Row(crossAxisAlignment:CrossAxisAlignment.center ,
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Recent Attendance', style: AppTypography.bold,),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 16,)),
                const SizedBox(width: 11,),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,  color: Colors.black, size: 16)),

              ],
            ),
            const SizedBox(height: 10,),
            Row(crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Text('CSC 396 - Today\'s Attendance', style: AppTypography.regular,),
                Spacer(),
                Text('86% Present', style: AppTypography.regular,),
              ],
            ),
            SizedBox(height: 6,),
            Divider(color: Colors.grey,),
            //listview of attendance records
            ReportWidget(),
            CustomButton(onPressed: (){}, text: 'Download attendance', textStyle: AppTypography.quickBold.copyWith(fontSize: 12, color: Colors.white))


          ],
        ),
      ),
    );
  }
}