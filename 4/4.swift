

struct Pizza{

    enum TypeOfPizza {
        case p
        case f
        case c
        case m
        
        init(type: String) {
            switch type {
            case "pepperoni": self = .p
            case "fourCheese": self = .f
            case "caesar": self = .c
            case "margarita": self = .m
            default: self = .p
            }
        }

    }
    
    enum doughType {
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
    
    enum additive{
        case tomato
        case pepper
        case olives
        
        init?(add: String) {
            switch add {
            case "tomato": self = .tomato
            case "pepper": self = .pepper
            case "olives": self = .olives
            default: return nil
            }
        }
    }
    var name: TypeOfPizza
    var addes: additive
    var dough: doughType
    private var cost: Int
    
    init (name: TypeOfPizza, cost: Int, dough: doughType, addes: additive){
        self.name = name
        self.cost = cost
        self.dough = dough
        self.addes = addes
    }
    
}

class Pizzeria{
    private var arrayOfPizzas: [Pizza]
    
    init(arrayOfPizzas: [Pizza]) {
        self.arrayOfPizzas = arrayOfPizzas
    }
    
    func addPizzza(newpizza: Pizza){
        self.arrayOfPizzas.append(newpizza)
    }
    
    func getAllPizzas()->[Pizza]{
        return self.arrayOfPizzas
    }
    
}

var myPizzariya = Pizzeria(arrayOfPizzas: [])
myPizzariya.addPizzza(name: .p, cost: 100, dough: .thick, addes: .olives)