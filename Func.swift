# 함수

//파라미터에 기본값을 지정할 수도 있다.
func  hello(name: String, time: Int = 1)  {
	//...
}
hello("kim")



//...를 사용하면 개수가 정해지지 않은 파라미터를 받을 수 있다.
func sum(numbers: Int...) -> Int {
	var sum = 0
	for number in numbers {
		sum += number
	}
	return sum
}

sum(1,2)
sum(1,2,3)



