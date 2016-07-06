let optionalString: String? = "a string"
if let string = optionalString {
    print(string)
} else {
    print("Wooops! No string")
}

func ifLet<T>(_ value: T?, then: T -> (), else elseFunc: () -> ()) {
    switch value {
    case .some(let string): then(string)
    case .none: elseFunc()
    }
}

ifLet(optionalString,
    then: { print($0) },
    else: { print("Wooops! No string") }
)