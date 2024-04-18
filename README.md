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

#### ✏️ 프로젝트 후 회고
***

##### Q :

A :


##### Q :

A :

##### Q :

A :

##### Q :

A :

