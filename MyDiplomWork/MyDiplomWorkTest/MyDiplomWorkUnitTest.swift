import XCTest
@testable import MyDiplomWork
class MyDiplomWorkUnitTest: XCTestCase {
    
    var productViewModel:ProductViewModel?
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        productViewModel = ProductViewModel()
    }
    
    override func tearDownWithError() throws {
        productViewModel = nil
        try super.tearDownWithError()
    }
    
    func testExample() throws {
        var sum: Int = 0
        for num in productViewModel!.productPickerOptions{
            sum += num.tag
        }
        XCTAssertEqual(sum, 3, "сумма tags корректна")
    }
    
    func testPerformanceExample() throws {
        measure {
            productViewModel?.productPickerOptions = [
                ProductPickerOption(name: "test1", tag: 0),
                ProductPickerOption(name: "test2", tag: 1),
                ProductPickerOption(name: "test3", tag: 2),
            ]
        }
    }
}
