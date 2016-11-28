# 클래스

// 상속
class Dog: Animal {
	var name: String?
	var age: Int

	func simpleDescription() -> String {
		if let name = self.name {
			return name
		}else {
			return "her name is not exsist"
		}
	}
}

class Animal {
	let numberOfLegs: Int = 4
}

var myDog = Dog()
print(myDog.numberOfLegs)  // 4


// property 는 optional 이 아니라면 초기값을 가지고 있어야 한다. 
// 상속받은 클래스는 super.init() 해야한다. 
// init() 한 다음, super.init() 한다. 