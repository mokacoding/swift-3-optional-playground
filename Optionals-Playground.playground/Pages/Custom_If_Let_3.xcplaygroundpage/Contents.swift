let input: String? = "a string"
let output: Int = {
    if let string = input  {
        return Array(string.characters).count
    } else {
        return -1
    }
}()

func ifLet<Wrapped, Returned>(
    _ value: Optional<Wrapped>,
    then thenFunction: (Wrapped) -> Returned,
    else elseFunction: () -> Returned) -> Returned {

    switch value {
    case .some(let x): return thenFunction(x)
    case .none: return elseFunction()
    }
}

let o = ifLet(
    input,
    then: { x in
        return Array(x.characters).count
    },
    else: {
        return -1
    }
)