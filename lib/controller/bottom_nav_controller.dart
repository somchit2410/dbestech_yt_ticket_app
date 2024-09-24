import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // ເຮັດໃຫ້ໂຕແປມີຄວາມສາມາດໃນການຕອບໂຕ້ໄດ້ ຫຼື ປ່ຽນໄປຕາມ UI ດ້ວຍ .obs
  // seletedIndex ແມ່ນ RxInt
  // change index for BottomNavBar
  var seletedIndex = 0.obs;

  void onItemTapped(int index) {
    seletedIndex.value = index;
  }
}

/* 
ເພື່ອທີ່ຈະໃຊ້ງານ GetX 
1. ເຮົາຕ້ອງຮັບຮູ້ກ່ອນວ່າໂຕແປໂຕໃດທີ່ຕ້ອງການທີ່ຈະປ່ຽນແປງຄ່າ (seletedIndex)
   ເພື່ອທີ່ເຮົາຈະໄດ້ແຍກມັນອອກມາໃນຄລາວແຍກຕ່າງຫາກ (ແຍກຈາກໄຟລ໌ UI)
   ແລະຕ້ອງ extends GetxController ເພື່ອໃຊ້ງານ GetX
  - ຄ່າຂອງໂຕແປຈະຕ້ອງມີ .obs 
  - ແລະໂຕແປເມື່ອມັນເກິດການປ່ຽນແປງອີງຕາມ click event ທີ່ແຕກຕ່າງກັນ ເົຮາກໍ່ຄວນສົ່ງ
  ຂໍ້ມູນທີ່ມີການປ່ຽນແປງນັ້ນໄປ ແລະ ອັບເດດຄ່ານັ້ນ (index)
2. ເຮົາຕ້ອງໝັນໃຈວ່າເຮົາໄດ້ມີການ inject controll ທີ່ extends GetX ຂອງເຮົາໄປທີ່ໄຟລ໌ UI 
   ບ່ອນທີ່ເຮົາຕ້ອງການໃຫ້ເກີດການປ່ຽນແປງ
3. ເຮົາຕ້ອງໄດ້ມີການເອີ້ນໃຊ້ໂຕແປທີ່ໄດ້ມີການປະກາດເປັນ obs ໃນ controller ແລະ method
   (controll.seletedIndex.value & controller.onItemTapped) ແລະ ສຸດທ້າຍຕ້ອງເອົາ
   ໂຄ້ດໜ້າ UI (Scaffold) ເທັງໝົດໄປໄວ້ໃນ Obx

*/
