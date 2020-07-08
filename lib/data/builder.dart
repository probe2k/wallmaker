import 'package:wallmaker/model/cat_model.dart';

List<Categories> fetchData() {
  List<Categories>  categories = List();
  Categories model = Categories();

  model.imgUrl="https://images.pexels.com/photos/1044989/pexels-photo-1044989.jpeg?crop=entropy&cs=srgb&dl=black-portable-speaker-1044989.jpg&fit=crop&fm=jpg&h=426&w=640";
  model.catName="Vectors";
  categories.add(model);
  model=Categories();

  model.imgUrl="https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?crop=entropy&cs=srgb&dl=pink-and-purple-wallpaper-1616403.jpg&fit=crop&fm=jpg&h=426&w=640";
  model.catName="Abstract";
  categories.add(model);
  model=Categories();

  model.imgUrl="https://images.pexels.com/photos/41951/solar-system-emergence-spitzer-telescope-telescope-41951.jpeg?crop=entropy&cs=srgb&dl=sky-space-telescope-universe-41951.jpg&fit=crop&fm=jpg&h=400&w=640";
  model.catName="Space";
  categories.add(model);
  model=Categories();
  
  model.imgUrl="https://images.pexels.com/photos/1194713/pexels-photo-1194713.jpeg?crop=entropy&cs=srgb&dl=closeup-photo-of-black-and-blue-keyboard-1194713.jpg&fit=crop&fm=jpg&h=426&w=640";
  model.catName="Computer";
  categories.add(model);
  model=Categories();

  model.imgUrl="https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?crop=entropy&cs=srgb&dl=close-up-photography-of-leaves-with-droplets-807598.jpg&fit=crop&fm=jpg&h=480&w=640";
  model.catName="Nature";
  categories.add(model);
  model=Categories();

  return categories;
}