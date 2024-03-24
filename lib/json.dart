class Items {
  final String foodname;
  final String image;
  final String description;

  Items(
      {required this.foodname, required this.image, required this.description});
}

List<Map<String, Object>> fooditemsmap = [
  {
    "foodname": "Burger",
    "image":
        "https://restaurants-static.skipthedishes.com/images/resized/item-018d86a55c3d91ef2b45.jpg",
    "description": "A delicious grilled beef "
  },
  {
    "foodname": "Pizza",
    "image":
        "https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?rs=1&pid=ImgDetMain",
    "description": "A mouthwatering Italian "
  },
  {
    "foodname": "Sushi",
    "image":
        "https://th.bing.com/th/id/OIP.cOiUqe84m90EJQ1-VSy9swHaE8?rs=1&pid=ImgDetMain",
    "description": "Exquisite bite-sized pieces"
  },
  {
    "foodname": "Tacos",
    "image":
        "https://www.samtell.com/hs-fs/hubfs/Blogs/Four-Scrumptous-Tacos-Lined-up-with-ingredients-around-them-1.jpg?width=1800&name=Four-Scrumptous-Tacos-Lined-up-with-ingredients-around-them-1.jpg",
    "description": "Authentic Mexican street food "
  },
  {
    "foodname": "Salad",
    "image":
        "https://www.tasteofhome.com/wp-content/uploads/2017/10/BLT-Chicken-Salad_EXPS_CHBZ18_12369_C10_19_5b-3.jpg",
    "description": "A fresh and healthy combination "
  },
  {
    "foodname": "Pasta",
    "image":
        "https://th.bing.com/th/id/OIP.sDbqbE8v2HGsoxSSIiA4RQHaLH?rs=1&pid=ImgDetMain",
    "description": "Comforting Italian noodles cooked "
  },
  {
    "foodname": "Ice Cream",
    "image":
        "https://th.bing.com/th/id/OIP.rozscWmCmbBDQSXR0e9QZwHaFj?rs=1&pid=ImgDetMain",
    "description": "Creamy, dreamy scoops of frozen delight "
  },
  {
    "foodname": "Steak",
    "image":
        "https://th.bing.com/th/id/OIP.6MLStjaqOdDdn0P8OySMPgHaE7?rs=1&pid=ImgDetMain",
    "description": "Juicy, tender cuts of beef cooked "
  },
  {
    "foodname": "Sushi Burrito",
    "image": "https://th.bing.com/th?id=OSK.e15417d98310f7534638b782593fbaac",
    "description": "A fusion of Japanese and Mexican cuisines."
  },
  {
    "foodname": "Ramen",
    "image": "https://bing.com/th?id=OSK.7a46bee658eb666a238f907462c00da3",
    "description": "Japanese noodle soup consisting of chewy wheat noodles "
  },
  {
    "foodname": "Chicken Wings",
    "image": "https://bing.com/th?id=OSK.015241e7a693bf3c7734fd45136fb7f7",
    "description": "Crispy and succulent chicken wings "
  },
  {
    "foodname": "Crepes",
    "image": "https://bing.com/th?id=OSK.5d70f299c356ad611ab2b645b7b9b2d1",
    "description":
        "Thin, delicate pancakes filled with sweet or savory fillings "
  },
  {
    "foodname": "Pho",
    "image": "https://bing.com/th?id=OSK.be572d220fd69a895ea008afea381beb",
    "description":
        "Vietnamese noodle soup made with a flavorful broth infused with spicess"
  },
  {
    "foodname": "Fish and Chips",
    "image":
        "https://th.bing.com/th/id/R.b2e51f13918363ca140f45ff0a2e4008?rik=pmFfrx2WtQIsBg&riu=http%3a%2f%2fstatic.guim.co.uk%2fsys-images%2fGuardian%2fAbout%2fGeneral%2f2014%2f9%2f12%2f1410531530344%2fFish-and-chips-014.jpg&ehk=jEEmrfAoThNWHDoK6VwrgsfS2d6u3YgQgeSUDQ%2fuZbg%3d&risl=&pid=ImgRaw&r=0",
    "description": "Classic British comfort food consisting of battered "
  },
  {
    "foodname": "Burrito",
    "image":
        "https://cdn.tasteatlas.com/images/dishes/f4291f3e82f84c33a5997f801e8fb24f.jpg?mw=1300",
    "description": "A hearty Mexican "
  }
];

List<Items> createFoodItems() {
  final List<Items> food = fooditemsmap
      .map((e) => Items(
            foodname: e['foodname'] as String,
            image: e['image'] as String,
            description: e['description'] as String,
          ))
      .toList();
  return food;
}
