import '../models/page_model.dart';

class PageViewModel {
  List<PageModel> getPages() {
    return [
      PageModel(
        imagePath: 'assets/images/chhose_product.png', height : 300 , width : 300,
        title: 'Choose Products',
        description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      ),
      PageModel(
        imagePath: 'assets/images/make_payments.png',  height : 300 , width : 300,
        title: 'Make Payment',
        description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      ),
      PageModel(
        imagePath: 'assets/images/get_your_orders.png',
        title: 'Get Your Order',
        description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.', height : 300 , width : 300,
      ),
    ];
  }
}
