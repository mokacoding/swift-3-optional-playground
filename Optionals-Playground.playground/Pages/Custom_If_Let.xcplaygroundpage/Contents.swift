// Lets reimplement `if let` to consolidate our understanding of `Optional`

func ifLet<Wrapped>(
    _ value: Optional<Wrapped>,
    then thenFunction: (Wrapped) -> (),
    else elseFunction: () -> ()) {

    switch value {
    case .some(let x): thenFunction(x)
    case .none: elseFunction()
    }
}

let optionalValue: Int? = 42

if let value = optionalValue {
    print(value)
} else {
    print("no value")
}

ifLet(optionalValue,
      then: { x in
        print(x)
    },
      else: {
        print("no value")
    }
)
