// # Optional is a type

// Writing:

var a: Int? = 42

// Is the same as writing:

var b: Optional<Int> = 42

// Which in turn is the same as writing:

var c = Optional<Int>.some(42)

// In fact if you print the type of an optional value `T?` you'll get `Optional<T>`.
let x: String? = ":)"
print(x.dynamicType) // => `Optional<Strin>`

// Looking at optional values written as `Optional<T>` rather than `T`
// helps making sense of the meaning of _unwrapping_.