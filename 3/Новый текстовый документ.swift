//1
let teas: [String: Int] = ["earl grey": 100, "green": 75, "black": 80]
var clients: [String] = ["black", "green", "black", "earl grey"]
for (index, e) in clients.enumerated() {
    print(String(index) + " " + e + "" + String(teas[e]!))
}

//2
var array = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
print(array.compactMap({$0}).filter{$0 != 0 && $0 != 4}.sorted(by: <)) 
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
