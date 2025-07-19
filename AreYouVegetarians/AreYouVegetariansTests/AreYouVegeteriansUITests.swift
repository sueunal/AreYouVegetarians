//
//  AreYouVegeterians.swift
//  AreYouVegetariansTests
//
//  Created by soom on 7/19/25.
//

import XCTest

class AreYouVegeteriansUITests: XCTestCase {

    func testGreetingAppearsAfterButtonTap() {
        let app = XCUIApplication()
        app.launch()
        
        let nameTextField = app.textFields["NameTextField"]
        XCTAssertTrue(nameTextField.exists)
        nameTextField.tap()
        nameTextField.typeText("Kim")
        
        let greetButton = app.buttons["GreetButton"]
        XCTAssertTrue(greetButton.exists)
        greetButton.tap()
        
        let greetingText = app.staticTexts["GreetingText"]
        XCTAssertTrue(greetingText.waitForExistence(timeout: 2))
        XCTAssertEqual(greetingText.label, "안녕하세요, Kim!")
    }
}

