import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}


//  return Row(
//       children: items.asMap().entries.map(
//         (e) {
//           int index = e.key;
//           var item = e.value;
//           return Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 updateIndex(index);
//               },
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
//                 child: AllExpensesItem(
//                   itemModel: item,
//                   isActive: selectedIndex == index,
//                 ),
//               ),
//             ),
//           );
//         },
//       ).toList(),
//     );