# Property

// Stored Property / Computed Property 

// computed property - get/ set/ willSet/ didSet
struct Hex {
	var decimal: Int? {
		willSet {
			print("\(self.decimal) 에서 \(newValue) 로 값이 바뀔 예정입니다.")
		}
		didSet {
			print("\(oldValue) 에서 \(newValue) 로 값이 바뀌었습니다.")
		}
	}
}

// willSet과 didSet은 property의 값이 바뀌면, UI를 업데이트하거나 특정 메서드를 호출하는 등의 역할을 할 때에 사용