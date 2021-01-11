# Creating and Combining View

## Section4

### 이미지 로드 및 속성 제어 ###

* Image(filename)으로 Imageview 생성 가능 (그 전에 Assets.xcassets에 이미지 파일을 추가해주어야 한다.)
* clipShape(shapetype)으로 이미지 모양 변경 가능
	* example) clipShape(Circle())
* clipShape의 메소드 overlay로 이미지 테두리 속성을 지정할 수 있다.
	* example) clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 4))
* clipShape의 메소드 shadow로 이미지에 테두리에 대한 그림자를 지정 가능
