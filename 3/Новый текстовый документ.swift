//1
let teas: [String: Int] = ["earl grey": 100, "green": 75, "black": 80]
var clients: [String] = ["black", "green", "black", "earl grey"]
for (index, e) in clients.enumerated() {
    print (String(index)+" "+e) 
    print(teas[e]!,"р\n") // ?
}

//2
var array = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
var res = array.filter { $0 != nil && $0 != 0 && $0 != 4 }
// var b = array.compactMap { Int($0) }
var res2: [Int] = []
res.forEach {el in
res2.append(el!)
}
print(res2.sorted{ $0 < $1 })

//3
func myfunc (a: Int) -> [Int]{
    var res: [Int] = [1]
    for _ in 1..<a{
        res.append((res.last!)*2)
    }
    return res
}
print(myfunc(a: 6))
