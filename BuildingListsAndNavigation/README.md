# Building Lists and Navigation

## Section1 : Create a Landmark Model

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

#### Hashable, Codable in Landmark.swift

* https://daheenallwhite.github.io/swift/2019/06/02/Protocol-Conformance-Adoption/
* https://docs.swift.org/swift-book/LanguageGuide/Protocols.html#ID278

> Property Requirements
>> A protocol can require any conforming type to provide an instance property or type property with a particular name and type. The protocol doesn't  specify whether the property should be a stored perperty or a computed property-it only specifies the property must be gettable or gettable and settable

* 위 스위프트 레퍼런스의 설명을 참고하면 코드내에 Hashable, Codable은 Protocol로 보이는데, 다른 언어에서의 상속과 비슷한 개념인 것같다
* 위 블로그의 설명을 참고하면 스위프트에서는 protocol을 자료구조의 수평적 확장을 위해 사용하며, 상속이라는 표현을 쓰지 않고 Adoption, Conformance라는 표현을 사용한다는데, 아마 상속처럼 계층적인 구조가 아니기 때문일 것이라고 생각한다.
```Swift
struct Coordinates: Hashable, Codable { // Adoption
	var latitude: Double // Conformance
	var longtitude: Double // Conformance
```
* Adoption으로 프로토콜을 명시하고, Conformance로 요구사항을 구현하는 모습


