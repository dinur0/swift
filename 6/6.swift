/* Задание 1
Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. 
Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками
*/ 
struct Employee{
    
    enum Positions: String{
        case cashier
        case cook
    }

    var name: String
    var salary: Int
    var position: Positions
    
}

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


protocol OnOffProtocol{
    func openShop()
    func closeShop()
}

protocol FoodProtocol{
    var cost: Int {get}
    var name: String {get}
}

class Pizzeria{
    
    var tables: [Table]
    var staff: [Employee] //1
    private var mainMenu: [FoodProtocol]
    
    init(mainMenu: [FoodProtocol], staff: [Employee]) {
        self.mainMenu = mainMenu
        self.staff = staff
        self.tables = [] //3
    }
    
    func addFood(newFood: FoodProtocol){
        mainMenu.append(newFood)
    }
    

}

extension Pizzeria: OnOffProtocol{
    func openShop() {
        print("Open")
    }
    func closeShop() {
        print("Closed")
    }
}

/* Задание 2
Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, 
которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, 
если места не хватает. Изначальное количество мест задается в инициализаторе
*/
class Table{
    var numberOfSeats: Int
    weak var PizzeriasTable: Pizzeria? // 3
    
    func isEnoughSeats(_ num: Int)->Bool{
        num<=numberOfSeats
    }
    
    init(numberOfSeats: Int){
        self.numberOfSeats = numberOfSeats
    }
}

func myfunction<T: Numeric>(first: T, second: T)->T{
    first - second
}


// print(myfunction(first: 10,second: 5))