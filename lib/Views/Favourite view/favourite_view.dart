import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx/Views/Favourite%20view/favourite_controller.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite View'),
      ),
      body: ListView.builder(
          itemCount: favouriteController.items.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(favouriteController.items[index]),
                trailing: Obx(
                  () => IconButton(
                      onPressed: () {
                        if (favouriteController.favourites.contains(
                            favouriteController.items[index].toString())) {
                          favouriteController.removeFromFav(
                              favouriteController.items[index].toString());
                        } else {
                          favouriteController.addToFav(
                              favouriteController.items[index].toString());
                        }
                      },
                      icon: Icon(Icons.favorite,
                          color: favouriteController.favourites.contains(
                                  favouriteController.items[index].toString())
                              ? Colors.red
                              : Colors.grey)),
                ));
          }),
    );
  }
}
