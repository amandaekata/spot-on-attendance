import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class UsersListWidget extends StatelessWidget {
  const UsersListWidget({super.key, required this.name, required this.role});
  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 60, decoration: BoxDecoration(color: Colorpallete.grey, borderRadius: BorderRadius.circular(60)),
            child: Center(
              child: Icon(Icons.person_2_outlined, color: Colors.black,),
            )
          ),
          SizedBox(width: 23,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppTypography.quickBold.copyWith(fontSize: 20, ),),
              SizedBox(height: 17,),
              Text(role, style: AppTypography.quickBold.copyWith(fontSize: 16,color:const Color.fromARGB(255, 101, 98, 98)  ),),
      
            ],
          ),
          Spacer(),
          IconButton(onPressed: (){
            //delete user endpoint or idk
      
          }, icon: Icon(Icons.more_vert_rounded, color: Colors.black,))
        ],
      ),
    );
  }
}