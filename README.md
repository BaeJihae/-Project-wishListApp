## WishListApp


<p align="center">
  <img src="https://velog.velcdn.com/images/jihae__qu/post/7ff0cd03-35af-42b9-bb1e-579f80794ba6/image.png" width=300 height=300>

</p>




<br>
<br>


### 🖥️  **프로젝트 소개**
***
WishListApp은 사용자가 갖고 싶어하는 아이템을 자신의 위시 리스트에 담을 수 있는 위시 리스트 앱입니다.

<br>

	개발 목적 : CoreData 및 URLSession 통신 학습 목적

	개발 기간 : 24/4/15 ~ 24/4/28
    
<br>   
<br>



### 🛞  **개발 환경**

***

- Swift 5
- iOS 16.0
- UIKit
- CoreData
- Dummy API

<br>   
<br>


### 🕹️ **기술 스택**
***

#### Envirionment
<img src="https://img.shields.io/badge/xcode-black?style=for-the-badge&logo=Xcode&logoColor=147EFB"><img src="https://img.shields.io/badge/github-blue?style=for-the-badge&logo=github&logoColor=181717"><img src="https://img.shields.io/badge/git-black?style=for-the-badge&logo=git&logoColor=F05032">

#### Development
<img src="https://img.shields.io/badge/Swift-black?style=for-the-badge&logo=swift&logoColor=F05138"><img src="https://img.shields.io/badge/uikit-black?style=for-the-badge&logo=uikit&logoColor=2396F3">


<br>   
<br>


### 🌱 데이터 구조
***


#### Product Struct

``` swift
struct Product: Codable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage: Double
    let brand, category: String
    let thumbnail: String
    let images: [String]
}

```


#### CoreData

<p align="center">
 <img src="https://velog.velcdn.com/images/jihae__qu/post/ec999fa1-c8ca-463d-ab6e-f1d4c30e2d77/image.png" width=400 >
</p>

<br>   
<br>


### Project 구조
***

<p align="center">
 <img src="https://github.com/BaeJihae/-Project-wishListApp/assets/95227560/6bf92062-725d-4a80-a208-e5941f3c8f30" width=400 >
</p>




<br>   
<br>

### 📱 화면 구성
***

#### Main Screen
  
<p align="center">
<img src="https://velog.velcdn.com/images/jihae__qu/post/5b9b0872-2057-4ba4-97ab-71ba846bb012/image.png" width=200 >
</p>

#### Wish List Screen

<p align="center">
 <img src="https://velog.velcdn.com/images/jihae__qu/post/b82a36ff-2460-49ae-9d58-af45b7942326/image.png" width=200 >
</p>

<br>
<br>


#### ✨ 주요 기능
***

* **Image Slide**

Main 화면에서 사진을 왼쪽과 오른쪽으로 스와이프할 시, 다양한 제품 사진을 보여준다.

<p align="center">
 <img src="https://velog.velcdn.com/images/jihae__qu/post/c2eaf6ba-33c8-4848-945b-747911ab05ef/image.gif" width=200 >
</p>



<br>
<br>

* **Add to Wish 버튼**

사용자가 원하는 갖고 싶은 제품이 나왔을 때, 왼쪽 하단의 "Add to Wish" 버튼 클릭 시 Wish List에 담긴다.

<p align="center">
 <img src="https://velog.velcdn.com/images/jihae__qu/post/b09167a0-becc-4d31-9247-7b6c5a641166/image.gif" width=200 >
</p>


<br>
<br>

* **Next to Item 버튼**

사용자가 다음 제품을 보고싶을 때, 오른쪽 하단의 "Next to Item" 버튼 클릭 시 새로운 제품을 화면에 띄운다.

<p align="center">
 <img src="https://velog.velcdn.com/images/jihae__qu/post/9b003afc-c678-4b7b-81f1-1795bc75c23a/image.gif" width=200 >
</p>

<br>
<br>

* **Pull to Refresh**

Main 화면에서 아래로 스크롤을 당기면 새로고침이 되며 새로고침이 완료되면 새로운 제품을 화면에 띄운다.

<p align="center">
 <img src="https://velog.velcdn.com/images/jihae__qu/post/c5244b44-f2d0-44da-bc68-1028dd76fc72/image.gif" width=200 >
</p>

<br>
<br>

* **WishList 버튼**

오른쪽 상단에 "장바구니" 버튼을 클릭할 시 사용자의 wishList를 보여준다.

<p align="center">
 <img src="https://velog.velcdn.com/images/jihae__qu/post/32a1a9c6-c79b-4982-b424-0fe7bc8404e3/image.gif" width=200 >
</p>

<br>
<br>

* **Delete 버튼**

wishList 화면에서 "삭제" 버튼 클릭 시 해당 제품이 wishlist에서 삭제된다. 

<p align="center">
 <img src="https://velog.velcdn.com/images/jihae__qu/post/1cf5b454-e911-478b-96e7-003f58dd4dcf/image.gif" width=200 >
</p>

<br>
<br>
<br>

#### ✏️ 블로그 정리
***

| 순서 | 블로그 링크 |
|:---:|:---|
| 1 | [[ Project ] WishListApp #1 / URLSession을 이용해 데이터 불러오기](https://jihae-qu.tistory.com/76) |
| 2 | [[ Project ] WishListApp #2 / UI 작업 및 데이터 적용하기](https://jihae-qu.tistory.com/77)|
| 3 | [[ Project ] WishListApp #3 / CoreData에 데이터 저장하기](https://jihae-qu.tistory.com/80)|
| 4 | [[ Project ] WishListApp #4 / CoreData에 저장된 데이터 TableView로 출력하기 / 버튼으로 코어데이터 삭제하기](https://jihae-qu.tistory.com/81)|
| 5 | [[ Project ] WishListApp #5 / Pull to Refresh 적용하기 / UIRefreshControl](https://jihae-qu.tistory.com/84)|
| 6 | [[ Project ] WishListApp #6 / UIPageControl과 ScrollView를 사용한 이미지 스와이프 구현하기](https://jihae-qu.tistory.com/89)|
| 7 | [[ Project ] WishListApp #7 / App Icon 변경하기](https://jihae-qu.tistory.com/90)|


<br>
<br>

### ✏️ 프로젝트 후 회고
***

#### Q : CoreData의 각 Entity, Attribute, Relationship의 역할은?

A : CoreData의 Entity는 하나의 데이터 집합체로 객체입니다.

Entity의 하위 속성이 되어주는 것이 Attribute입니다.
CoreData내에는 여러개의 Entity가 존재할 수 있고, Entity 간에는 관계를 정의할 수 있는데 이때 관계를 Realtionship이라고 합니다. 

<br>

#### Q : 앱 화면의 콘텐츠를 표시하는 로직과 관리를 담당하는 객체는?

A : 앱의 뷰 계층구조를 관리해주는 객체인 UIViewController입니다.

화면 위의 보여지는 UIButton, UILabel 등을 UIView라고 하는데요. 이 UIView들의 로직과 관리를 담당합니다.
뷰에서 일어난 이벤트를 감지하여 업데이트해주고, 뷰와 사용자 간의 상호작용에 반응하고, view들의 위치나 크기를 조정해주는 역할을 합니다. 

<br>

#### Q : 앱의 콘텐츠나 데이터 자체를 내부 저장/보관하는 특별한 객체로는 무엇이 있는지?

A : Local DB에는 CoreData, SQLite, Realm 이 있습니다.

CoreData는 애플에서 제공하는 프레임워크입니다. 크고 복잡한 데이터를 체계적으로 저장할 수 있고, 데이터를 객체로 다룰 수 있어 편리하게 사용할 수 있는 장점이 있습니다.

그에 반해 SQLite와 Realm은 외부 라이브러리인데요!
Realm은 모바일에 최적화된 데이터 베이스로 SQLite와 CoreData에 비해 속도가 빠르고, 성능이 좋다는 장점이 있습니다. 하지만, 메인 스레드에서 다른 스레드로 접근할 대 에러가 발생할 수 있다는 단점이 있습니다.
SQLite는 매우 작고 가벼워서 전체 데이터 베이스를 하나의 디스크 파일에 저장할 수 있고, 다양한 OS에서 사용할 수 있다는 장점이 있습니다. 하지만, CoreData와 Realm에 비교해서 성능이 떨어진다는 단점이 있습니다.

<br>

#### Q : URLSession이란?

A : URLSession이란 클라이언트와 서버간의 네트워크 통신을 하기위해 애플에서 기본적으로 제공하고 있는 API입니다. 

요청을 하는 Request와 요청을 받는 Response 구조로 이루어져 있으며, 요청 메서드의 종류에는 Get, Post, Put, Update 등이 있습니다.

Request할 url을 생성후에 configuration을 통해 메서드를 정하고, 그에 맞는 새로운 URLSession 인스턴스를 생성하여 dataTask 함수를 통해 데이터를 받아오는 과정을 통해 네트워크 통신을 할 수 있습니다. dataTask는 자체적으로 비동기적으로 작업하기 때문에 데이터를 사용하기 위해서는 콜백함수를 사용해야합니다.

<br>

#### Q : 이번 챕터에서 학습을 하며 알게된 기술, 지식을 정리

A : ScrollView를 메인보드에서 적용할 때 ScrollView에 대한 Layout을 설정하는 방법을 알게되었습니다.

URLSession으로 통신할 때, URLSession은 DataTask 작업을 자체적으로 비동기적으로 진행합니다. 그래서 작업에서 받아온 데이터를 사용하기 위해서는 콜백함수를 사용해야 한다는 것을 알게 되었습니다.

또한 이미지를 좌우로 넘기는 기능을 구현하기 위해 UIPageControl이라는 객체를 공부하게 되었습니다. UIPageControl은 여러 페이지나 여러 객체들을 점으로 표현하여 현재 사용자에게 보여지고 있는 페이지를 점으로 표시하도록 도와주는 객체입니다. 이번 챕터에서 UIPageControl과 ScrollView를 함께 사용하여 여러 이미지를 보여줄 수 있는 기능을 구현하였습니다.

<br>
