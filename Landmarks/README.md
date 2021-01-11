# Creating and Combining View

## Landmarks

### 텍스트 박스 컴포넌트 제어 ###

* Canvas(오른쪽 위에 + 밑에 있는 버튼으로 표시 가능, resume)로 Preview를 보면서 UI 제작가능
* 코드, Canvas에서 Command + 마우스 클릭으로 버튼, 텍스트 박스 등의 컴포넌트들의 레이아웃, 조작 가능
* 컴포넌트 사이에 Spacer() 함수를 추가함으로써 해당 레이아웃에 맞는 사이즈 내에서 Full height, Full width로 컴포넌트 위치 지정가능

## Section4

### 이미지 로드 및 속성 제어 ###

* File > New > File > SwiftUI View로 레이아웃 추가 가
* Image(filename)으로 Imageview 생성 가능 (그 전에 Assets.xcassets에 이미지 >파일을 추가해주어야 한다.)
* clipShape(shapetype)으로 이미지 모양 변경 가능
    * example) clipShape(Circle())
* clipShape의 메소드 overlay로 이미지 테두리 속성을 지정할 수 있다.
    * example) clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 4))
* clipShape의 메소드 shadow로 이미지에 테두리에 대한 그림자를 지정 가능
    * example) clipShape(~).shadow(radius: 7)

