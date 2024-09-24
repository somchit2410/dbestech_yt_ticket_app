import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_nav_provider.g.dart';
// ແຖວນີ້ແມ່ນຈະຖືກສ້າງອັດຕະໂນມັດ ເມື່ອເຮົາຣັນຄຳສັ່ງ flutter pub run build_runner build ທີ່ Terminal

@riverpod
class BottomNavBarNotifier extends _$BottomNavBarNotifier {
  @override
  int build() {
    return 0;
  }

  void onItemTapped(int index) {
    state = index;
    // state = seletedIndex.value ໃນ GetX
  }
}
