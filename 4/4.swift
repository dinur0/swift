

struct Pizza{

    enum TypeOfPizza {
        case pepperoni
        case fourCheese
        case caesar
        case margarita
        
        init(type: String) {
            switch type {
            case "pepperoni": self = .pepperoni
            case "fourCheese": self = .fourCheese
            case "caesar": self = .caesar
            case "margarita": self = .margarita
            default: self = .pepperoni
            }
        }
    }
    
    enum DoughType {
        case thin
        case thick
        
        init(thickness: String) {
            switch thickness {
            case "thin": self = .thin
            case "thick": self = .thick
            default: self = .thin
            }
        }
    }
    
    enum Additive{
        case tomato
        case pepper
        case olives
        
        init(add: String) {
            switch add {
            case "tomato": self = .tomato
            case "pepper": self = .pepper
            case "olives": self = .olives
            default: self = .tomato
            }
        }
        
        init?(newAdd: String) {
            switch newAdd {
            case "tomato": self = .tomato
            case "pepper": self = .pepper
            case "olives": self = .olives
            default: return nil
            }
        }
    }
    
    var name: TypeOfPizza
    var addes: [Additive]
    var dough: DoughType
    private var cost: Int
    
    init (name: TypeOfPizza, cost: Int, dough: DoughType, addes: [Additive]){
        self.name = name
        self.cost = cost
        self.dough = dough
        self.addes = addes
    }
    
    // init?(name: TypeOfPizza, cost: Int, dough: doughType, addes: nil){
    //     self.name = name
    //     self.cost = cost
    //     self.dough = dough
    //     self.addes = nil
    // }
    
}

class Pizzeria{
    private var arrayOfPizzas: [Pizza]
    
    init(arrayOfPizzas: [Pizza]) {
        self.arrayOfPizzas = arrayOfPizzas
    }
    
    func addPizzza(newpizza: Pizza){
        arrayOfPizzas.append(newpizza)
    }
    
    func getAllPizzas() -> [Pizza]{
        return arrayOfPizzas
    }
    
}

var myPizzariya = Pizzeria(arrayOfPizzas: [])
var myPizza1 = Pizza(name: .pepperoni, cost: 100, dough: .thick, addes: [.olives])
var myPizza2 = Pizza(name: .pepperoni, cost: 150, dough: .thin, addes: [.pepper, .olives])
// var myPizza3 = Pizza(name: .p, cost: 80, dough: .thin) // как создать другой инициализатор, в котороый необязательно передавать добавки?
myPizzariya.addPizzza(newpizza: myPizza1)
myPizzariya.addPizzza(newpizza: myPizza2)
print(myPizzariya.getAllPizzas())
