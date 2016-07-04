// Let's reimplement guard-let to consolidate our understanding of `Optional`

func myGuard<T>(_ value: Optional<T>, else elseFunction: () -> T) -> T {
    switch value {
    case .some(let actualValue): return actualValue
    case .none: return elseFunction()
    }
}

let optionalValue: Int? = 42

// Need to wrap the guard because it **has to** return, but returning in a Playground
// doesn't make sense
let x: String = {
    guard let value = optionalValue else {
        return "wooops"
    }
    return "\(value)"
}()

let y: Int = myGuard(optionalValue, else: { return -1 })
print(y)

// Trying to reimplement guard doesn't make a lot of sense because we cannot mimic the
// "forced return" behaviour.
//
// Our implementation it's acually equivalent to:
let z: Int = optionalValue ?? -1