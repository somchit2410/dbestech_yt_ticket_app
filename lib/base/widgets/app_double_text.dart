// ສ້າງ widget ສຳລັບແຖບໂຕໜັງສຶທີ່ເປັນຫົວຂໍ້ຂອງແຕ່ລະໝວດໝູ່
// ເພື່ອທີ່ຈະສາມາດນຳໄປໃຊ້ຊ້ຳໃນພື້ນທີ່ຕ່າງໆຂອງແອັບທີ່ມີຮູບແບບຄືກັນ

import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.titleText,
      required this.subText,
      required this.func});

  final String titleText;
  final String subText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: AppStyle.headLineStyle2,
        ),
        InkWell(
          // Link to all tickets page
          // ໃໍຊ້ Navigator.pushNamed ແທນ Navigator.push ແຕ່ຕ້ອງໄດ້ມີການກຳນົດ
          // routes ທີ່ໄຟລ໌ main.dart ກ່ອນ
          onTap: func,
          child: Text(
            subText,
            // copyWith ເມຕອດໃຊ້ເພື່ອທຳການຄັດລອກຄຸນສົມບັດທັງໝົດຈາກໂຕແປ (object) ຕົ້ນທາງ (baseTextStyle)
            // ແລະ ຍັງອະນຸຍາດໃຫ້ເຮົາສາມາດປັບປ່ຽນຂໍ້ມູນໃດໜື່ງ ຫຼື ຫຼາຍອັນໄດ້
            style: AppStyle.baseTextStyle.copyWith(
              color: AppStyle.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
