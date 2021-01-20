# Building Lists and Navigation

## Section1 : Create a Landmark Model

[**Landmark.swift**](https://github.com/Kimjaeseop/study_swift/blob/main/BuildingListsAndNavigation/Complete/Landmarks/Model/Landmark.swift)
### let, var 차이
* let : 상수, var : 변수

### Defining and Calling Function

* https://docs.swift.org/swift-book/LanguageGuide/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID166
#### Defining Function
```Swift
func greet(person: String) -> String {
	let greeting = "Hello, " + person + "!"
	return greeting
}
```

* parameter : (person: String)
	* 매개변수 명 : person, 매개변수 타입 : String
* return : -> String
	* 반환 타입만 String으로 지정

#### Calling Function
```Swift
print(greet(person: "Anna"))
// Prints "Hello, Anna!"
print(greet(person: "Brian"))
// Prints "Hello, Brian!"
```

* greet(person:) 으로 함수 호출
* String value를 person argument label 다음 전달
	* example) greet(person: "Anna")

### Hashable, Codable

* https://daheenallwhite.github.io/swift/2019/06/02/Protocol-Conformance-Adoption/
* https://docs.swift.org/swift-book/LanguageGuide/Protocols.html#ID278

> Property Requirements
>> A protocol can require any conforming type to provide an instance property or type property with a particular name and type. The protocol doesn't  specify whether the property should be a stored perperty or a computed property-it only specifies the property must be gettable or gettable and settable

* 위 스위프트 레퍼런스의 설명을 참고하면 코드내에 Hashable, Codable은 Protocol로 보이는데, 다른 언어에서의 상속과 비슷한 개념인 것같다
* 위 블로그의 설명을 참고하면 스위프트에서 protocol은 자료구조의 수평적 확장을 위해 사용하며, Adoption, Conformance라는 표현을 사용한다. 이는 아마 상속처럼 계층적인 구조가 아니기 때문일 것이라고 생각한다.
```Swift
struct Coordinates: Hashable, Codable { // Adoption
	var latitude: Double // Conformance
	var longtitude: Double // Conformance
```
* Adoption으로 프로토콜을 명시하고, Conformance로 요구사항을 구현하는 모습

----------------------------------------
[**ModelData.swift**](https://github.com/Kimjaeseop/study_swift/blob/main/BuildingListsAndNavigation/Complete/Landmarks/Model/ModelData.swift)

### Generic Function

* https://docs.swift.org/swift-book/LanguageGuide/Generics.html

```Swift
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
	let temporaryA = a
	a = b
	b = temporaryA
}
```
```Swift
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
	let temporaryA = a
	a = b
	b = temporaryA
}
```

* 위와 아래의 함수원형을 비교해보면 제네릭의 사용 유무인데, 위 함수의 경우는 Int type의 값만 바꿀 수 있는 반면 밑의 함수는 문자열등 모든 타입을 바꿀 수 있다.

**Example**
```Swift
var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)
// someInt is now 107, and anotherInt is now 3

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
// someString is now "world", and anotherString is now "hello"
```

#### The placeholder type
* https://docs.swift.org/swift-book/LanguageGuide/Generics.html
> 함수의 제네릭 버전은 실제 타입 이름(Int, String, Double) 대신 placeholder 타입을 사용한다.(위 코드에서는 T를 의미).
> placeholder 타입 이름은 T가 반드시 어떤 타입이 되어야 하는지가 아니다. 그러나 반드시 a와 b는 T로 같은 타입을 가져야 한다.
> 실제로 T는 함수가 호출될 때마다 실제 타입이 결정된다.
