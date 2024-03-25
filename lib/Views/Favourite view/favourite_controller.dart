import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> items = [
    'Apple ',
    'Banana',
    'Peach',
    'Pomegranate ',
    'Pineapple',
    'Strawberries',
    'Papaya ',
    'Tangerine',
    'Watermelon'
  ].obs;
  RxList favourites = [].obs;

  addToFav(String value) {
    favourites.add(value);
    print(favourites.toString());
  }

  removeFromFav(String value) {
    favourites.remove(value);
    print(favourites.toString());
  }

  favFunction(value) {
    if (favourites.contains(items[value].toString())) {
      removeFromFav(items[value]);
    } else {
      addToFav(items[value]);
    }
  }
}
