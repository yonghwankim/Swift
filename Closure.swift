# 클로저

func helloGenerator(message: String) -> (String, String) -> String {
	return { (firstName: String, lastName: String) -> String in 
		return message + firstName + lastName
	}
}


// swift 는 타입추론을 하기 때문에 타입, 파라미터, in, return 도 생략할 수 있다.
func helloGenerator(message: String) -> (String, String) -> String {
	return { message + $0 + $1 }
}


// 클로저를 변수처럼 정의할 수도 있다. 옵셔널로 정의할 수도 있다.
let hello:(String, String) -> String = { "hello" + $0 + $1 }
hello("mr.", "kim")



// 클로저 활용 - sort(), filter(), map(), reduce() ...
let array1 = [1,2,3,4,5]
let array2 = array1.map { $0 * 2 }  //[2,4,6,8,10]
array1.reduce(0) { $0 + $1 }  //15
array1.reduce(0, +)  //15  연산자도 함수다. 함수는 클로저다. 연산자도 클로저다.

