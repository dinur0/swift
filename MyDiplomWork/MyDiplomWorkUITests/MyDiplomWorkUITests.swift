//
//  MyDiplomWorkUITests.swift
//  MyDiplomWorkUITests
//
//  Created by хех on 27.02.2024.
//

import XCTest

final class MyDiplomWorkUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["$63,300.00"].tap()
        app.staticTexts["Weekly Monitor Sales"].tap()
        app.otherElements["Monday"].tap()
        
        app/*@START_MENU_TOKEN@*/.buttons["Smartphone"]/*[[".segmentedControls.buttons[\"Smartphone\"]",".buttons[\"Smartphone\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["video card"]/*[[".segmentedControls.buttons[\"video card\"]",".buttons[\"video card\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
