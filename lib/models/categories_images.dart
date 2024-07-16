class CategoriesImages {
   final String title;
   final String images;


   CategoriesImages({
      required this.title,
      required this.images
   });
}

final List<CategoriesImages> categories=  [
   CategoriesImages (
    title: "Beauty",
    images: "assets/images/beauty.png",
   ),

   CategoriesImages (
    title: "Fashion",
    images: "assets/images/fashion.png",
   ),
    CategoriesImages (
    title: "Kids",
    images: "assets/images/kids.png",
   ),
    CategoriesImages (
    title: "Mens",
    images: "assets/images/mens.png",
   ),
    
    CategoriesImages (
    title: "Womens",
    images: "assets/images/womens.png",
   ),
    
    
];