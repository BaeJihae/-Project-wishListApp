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
 <img src="blob:https://velog.io/b9d8d309-a986-4fd6-9efd-126a244ce4c5" width=200 >
</p>

<br>
<br>

* **Delete 버튼**
wishList 화면에서 "삭제" 버튼 클릭 시 해당 제품이 wishlist에서 삭제된다. 

<p align="center">
 <img src="blob:https://velog.io/d126df71-15d0-4fdf-bdf4-6c9360b2b07f" width=200 >
</p>

<br>
<br>
<br>


#### 🌱 데이터 구조
***


##### Product Struct

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


##### CoreData

![](https://velog.velcdn.com/images/jihae__qu/post/ec999fa1-c8ca-463d-ab6e-f1d4c30e2d77/image.png)
