# READ-ME for Console Shopping Assignment
## Features
- 판매상품 목록을 볼 수 있습니다. 
- 상품을 장바구니에 담을 수 있습니다.
- 4를 눌러 나가는 것이 아닌 이상 계속 terminal과 상호작용할 수 있습니다. 
- 장바구니에 담긴 상품의 총 가격을 확인하고 어떤 상품이 담겨있는지 확인 할 수 있습니다. 
- 쇼핑몰 프로그램을 종료할 수 있는 기능이 있습니다. (종료시 한번 더 물어봅니다)
-  장바구니를 초기화 할 수 있습니다. 

## Error Handling
- 물건 추가에 있어 잘못된 입력값에 대한 에러처리를 try~on으로 처리되어있습니다.
- 잘못된 숫자 입력을 통한 interaction에 대해 예외를 Switch-case로 처리되어 있습니다. 
- 가장 처음 번호 입력시, 범위 외의 숫자를 입력하면 세션 초기화 전에 한번 더 기회를 제공

## Class 
- 상품(Product)
- 상품몰(ShoppingMall)

## Commenting and Variable Naming Conventions
- smallCamel
- 코드 블럭별로 주석 처리 및 기능과 변수명은 기능에 맞춰 구현되어 있습니다. 
