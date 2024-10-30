// 개인과제: 콘솔 쇼핑몰

import 'dart:convert';
import 'dart:io';

class ShoppingMall {
  //attributes
  List<Product> sales = [];
  List<Product> cart = [];
  int totalPrice = 0;
  
  //methods
  //상품 목록 출력
  void showProducts(){
    print('현재 상품 목록은 다음과 같습니다');
    for (int i=0; i<sales.length; i++){
      //print product name / price      
      print(sales[i].name +"/ "+ (sales[i].price).toString());
    };
    //return this.sales;
  }
  //상품 장바구니에 담기
  void addToCart(Product item){
    this.cart.add(item);
    calcTotal();
  }
  //장바구니에 담은 상품의 총 가격을 계산하는 메서드
  void calcTotal(){
    int tot = 0;
    for(int i = 0; i<this.cart.length;i++){
      tot += this.cart[i].price;
    }
    this.totalPrice = tot;
    //return tot;
  }
  //총 가격을 출력하는 메서드
  void showTotal(){
    print(this.totalPrice);
  }

  //generator
  ShoppingMall(List<Product> sales){
    this.sales = sales;
    this.cart = [];
    this.totalPrice = 0;
  }
}

class Product {
  //attributes
  String name = '';
  int price = 0;
  //generator
  Product(String name, int price){
    this.name = name;
    this.price = price;
  }
}

void main() {
  //declare the products available
  Product shirt = Product('shirts',45000);
  Product dress = Product('dress', 30000);
  Product halfsleeves = Product('shortsleeves', 35000);
  Product shorts = Product('shorts', 38000);
  Product socks = Product('socks', 5000);

  //initiate shoppingMall
  ShoppingMall shopify = ShoppingMall([shirt, dress, halfsleeves, shorts, socks]);

  //show options and choices
  print('저희 쇼핑몰 Shopify에 오신것을 환영합니다');
  print('원활한 쇼핑 경험을 위해 아래 선택지에 따른 번호를 입력해 주세요');
  print('-----------------------------------------------------');
  print("[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료");
  print('-----------------------------------------------------');
  //String? n = stdin.readLineSync();
  //print(n);
  int input = int.parse(stdin.readLineSync()!);
  print("$input을(를) 입력하셨습니다");
  do{
    //print('-----------------------------------------------------');
    //print("[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료");
    //print('-----------------------------------------------------');
    switch (input) {
      case 1:
        shopify.showProducts();
        input = relocateInput();
        ;
      case 2:
        print("어떤 물거을 담으시겠습니까? 물건 이름을 적어주세요");
        String? itemName = stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
        print(itemName);
        //print(itemName.runtimeType);
        try {
          for (int i = 0; i<shopify.sales.length; i++){
            //print(shopify.sales[i].name.runtimeType);
            if (shopify.sales[i].name == itemName){
              Product itemToAdd = shopify.sales[i];
              shopify.addToCart(itemToAdd);
              print("해당 상품이 추가되었습니다");
              break;
            }
          }
          //Product itemToAdd = shopify.sales.firstWhere((sale) => sale.name == itemName);
          input = relocateInput();
        } on Exception {
          print('잘못된 이름입니다. 다시 입력해주세요');
          input = int.parse(stdin.readLineSync()!);
        }
        ;
      case 3:
        int total = shopify.totalPrice;
        List totalItem = [];
        print("현재까지 장바구니에 $total원 어치를 담으셨네요!");
        for (int i = 0; i<shopify.cart.length; i++){
          totalItem.add(shopify.cart[i].name);
        }
        print("현재 장바구니에는 $totalItem이 있습니다.");
        input = relocateInput();
        ;
      case 4:
        print('-----------------------------------------------------');
        print("이용해 주셔서 감사합니다. 안녕히가세요!");
        print('-----------------------------------------------------');
        //break;
      default:
        print('입력값이 잘못되었습니다, 다시 입력해 주세요');
        input = relocateInput();
    } 
  } while(input <4);

  
}

int relocateInput(){
  print('-----------------------------------------------------');
  print("[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료");
  print('-----------------------------------------------------');
  int input = int.parse(stdin.readLineSync()!);
  //number = stdin.readByteSync();
  return input;
}
