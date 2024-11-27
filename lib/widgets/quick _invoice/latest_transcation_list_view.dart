import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer/user_info_list_title.dart';

class LatestTranscationListView extends StatelessWidget {
  const LatestTranscationListView({super.key});
  static const items = [
    UserInfoModel(
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map(
          (e) {
            return IntrinsicWidth(
              child: UserInfoListTitle(userInfoModel: e),
            );
          },
        ).toList(),
      ),
    );
  }
}


// return SizedBox(
//       height: 80,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return IntrinsicWidth(
//             child: UserInfoListTitle(
//               userInfoModel: items[index],
//             ),
//           );
//         },
//       ),
//     );