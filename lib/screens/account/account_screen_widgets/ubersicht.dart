import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';
import 'package:final_capstone/screens/account/account_screen_widgets/ubersicht_widgets/ubersicht_widgets.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';
import 'package:final_capstone/widgets/container/custom_container.dart';

class Ubersicht extends StatelessWidget {
  const Ubersicht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const RobotoTextHeadlineTwo(
                text: ubersicht,
                fontSize: 22,
              ),
              const Spacer(),
              SvgPicture.asset(treeIcon),
            ],
          ),
          const VerticalSpace(heightPercentage: 2),
          const UbersichtItems(),
          const UrlaubBeantragen(),
        ],
      ),
    );
  }
}