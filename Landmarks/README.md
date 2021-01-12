# Creating and Combining View #

## Section 1 ~ 3 ##

### 텍스트 박스 컴포넌트 제어 ###

* Canvas(오른쪽 위에 + 밑에 있는 버튼으로 표시 가능, resume)로 Preview를 보면서 UI 제작가능
* 코드, Canvas에서 Command + 마우스 클릭으로 버튼, 텍스트 박스 등의 컴포넌트들의 레이아웃, 조작 가능
* 컴포넌트 사이에 Spacer() 함수를 추가함으로써 해당 레이아웃에 맞는 사이즈 내에서 Full height, Full width로 컴포넌트 위치 지정가능

## Section4 : Create a Custom Image View ##

### 이미지 로드 및 속성 제어 ###

* File > New > File > SwiftUI View로 레이아웃 추가 가
* Image(filename)으로 Imageview 생성 가능 (그 전에 Assets.xcassets에 이미지 파일을 추가해주어야 한다.)
* clipShape(shapetype)으로 이미지 모양 변경 가능
    * example) clipShape(Circle())
* clipShape의 메소드 overlay로 이미지 테두리 속성을 지정할 수 있다.
    * example) clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 4))
* clipShape의 메소드 shadow로 이미지에 테두리에 대한 그림자를 지정 가능
    * example) clipShape(~).shadow(radius: 7)

### Section5 : Use SwiftUI Views From Other Frameworks ###

* Mapkit을 사용하기 위해 import Mapkit
* region 변수를 통해 위치 좌표 지정
* region 변수의 @State는 Preperty Wrapper로 사용자가 별도의 코딩 없이 어노테이션만 선언해도 뷰에서 수정이나 읽기가 가능하도록 캡슐화를 대신해준다.
	* Annotation : 데이터의 유효성 검사 등을 쉽게 알 수 있고, 용도는 다양한 목적이 있지만 메타데이터의 비중이 크다
	* example) java의 @Override, swift에는 @propertyWrapper, @WhateverDouble 등이 있다.
* 구조체에 $(Dollar Sign)을 붙이면 값뿐만 아니라, 구조체의 수정도 가능하다. PropertyWrapper에 직접 접근하여 get, set을 거치지 않고 값을 가져올 수 있다.
* span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
	* apple에서는 0.2, 0.2로 인자가 세팅 되어 있지만, 이미지와 지도가 일치하지 않아 검색 후 인자 수정
	* latitudeDelta : The amount of north-to-south distance (measured in degrees) to display on the map
	* longtitudeDelta : The amount of east-to-west distance (measured in degrees) to display for  the map regions.
	* https://developer.apple.com/documentation/mapkit/mkcoordinatespan

### Section6 : Compose the Detail View ###

* VStack으로 지도, 이미지, 텍스트를 쌓고 CircleImage의 offset 메소드로 이미지의 세로 위치를 조정하고, padding으로 CircleImage와 Text의 간격을 조정한다.
* IgnoresSafeArea(_:edges:)
	* Expands the view out of its safe area.
	* https://developer.apple.com/documentation/swiftui/view/ignoressafearea(_:edges:)
* Divider()
	* 회색줄로 구분자 추가
* Text뿐 아니라 HStack, VStack과 같은 Stack에도 폰트, 색상 조절 메소드를 부착할 수 있다.
* foregroundColor의 인자로 색상이 아닌 ".secondary"가 주어지면 타이틀을 설명하는 듯한 회색 텍스트로 변환된다.




