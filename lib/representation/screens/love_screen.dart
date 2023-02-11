import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/dimension_contants.dart';
import '../../data/medicine_data.dart';
import '../../data/models/medicine_model.dart';
import '../widgets/item_medicine_widget.dart';

class LoveScreen extends StatefulWidget {
  const LoveScreen({super.key});

  static const String routeName = '/love_screen';

  @override
  State<LoveScreen> createState() => _LoveScreenState();
}

class _LoveScreenState extends State<LoveScreen> {
  Iterable<MedicineModel> loveList =
      listMedicine.where((element) => element.islove == true);
  // @override
  // void initState() {
  //   list = listMedicine;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            // height: 186
            height: 156,
            child: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 90,
              backgroundColor: ColorPalette.backgroundScaffoldColor,
              title: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Danh sách yêu thích',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: Gradients.defaultGradientBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          35,
                        ),
                        bottomRight: Radius.circular(
                          35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          loveList.isEmpty
              ? Container(
                  margin: EdgeInsets.only(top: 206),
                  padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
                  child: Center(
                    child: Text(
                      'Chưa có dược liệu nào được thêm vào danh sách yêu thích',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(top: 156),
                  padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
                  child: SingleChildScrollView(
                    child: Column(
                      children: loveList
                          .map(
                            (e) => ItemMedicineWidget(
                              medicineModel: e,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
