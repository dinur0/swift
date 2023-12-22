

struct Pizza: FoodProtocol{

    enum TypeOfPizza: String {
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
    
    var type: TypeOfPizza
    var name: String { type.rawValue }
    var addes: [Additive]
    var dough: DoughType
    var cost: Int
    
    init (type: TypeOfPizza, cost: Int, dough: DoughType, addes: [Additive]){
        self.type = type
        self.cost = cost
        self.dough = dough
        self.addes = addes
    }
    
    
}

struct PotatoFree: FoodProtocol{
    
    enum PotatoSize: String{
        case small
        case medium
        case large
        
        init(potato: String){
            switch potato{
                case "small": self = .small
                case "medium": self = .medium
                case "large": self = .large
                default: self = .medium
            }
        }
    }
    
    var typeOfPotato: PotatoSize
    var name: String { typeOfPotato.rawValue + " potato" }
    var cost: Int
}


// Задание 3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.
protocol OnOffProtocol{
    func openShop()
    func closeShop()
}

protocol FoodProtocol{
    var cost: Int {get}
    var name: String {get}
}

class Pizzeria{
    
    private var mainMenu: [FoodProtocol]
    
    init(mainMenu: [FoodProtocol]) {
        self.mainMenu = mainMenu
    }
    
    // Задание 2: Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
    func addFood(newFood: FoodProtocol){
        mainMenu.append(newFood)
    }
    
    // func getAllPizzas() -> [Pizza]{
    //     return arrayOfPizzas
    // }
    
}

// Задание 4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
extension Pizzeria: OnOffProtocol{
    func openShop() {
        print("Open")
    }
    func closeShop() {
        print("Closed")
    }
}

/* Задание 5 Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.
Функция должна возвращать результат вычитания.
*/ 
func myfunction<T: Numeric>(first: T, second: T)->T{
    first - second
}

print(myfunction(first: 10,second: 5))
