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

> If a type already conforms to all of the requirements of a protocol, but has not yet started that it adopts that protocol, but has not yet started that it adopts that protocol, you can make it adopt the protocol with an empty extension

* 위 설명을 참고하면 코드내에 Hashable, Codable은 Conformance, Adoption. 즉, 상속으로 보인다.
* 스위프트에서는 자료구조의 수평적 확장을 위해 Protocol을 사용하고 Protocol시에는 상속이라는 표현을 쓰지 않고 Adoption, Conformance라는 표현을 사용한다는데, 아마 상속처럼 계층적인 구조가 아니기 때문일 것이라고 생각한다.
* Language Guide에서 제공하는 것과 타입은 다르지만
```Swift
struct Coordinates: Hashable, Codable { // Adoption
	var latitude: Double // Conformance
	var longtitude: Double // Conformance
```
* Adoption으로 프로토콜을 명시하고, Conformance로 요구사항을 구현하는 모습이 같다


