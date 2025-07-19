//
//  AreYouVegeterians.swift
//  AreYouVegetariansTests
//
//  Created by soom on 7/19/25.
//

import XCTest

final class AreYouVegetarians: XCTestCase {

    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        app.launch()
    }

    func testGreetingIsDisplayedWhenNameIsEntered() throws {
        let nameTextField = app.textFields["NameTextField"]
        XCTAssertTrue(nameTextField.waitForExistence(timeout: 5), "이름 입력 필드가 존재해야 합니다.")
        nameTextField.tap()
        nameTextField.typeText("Soom")
        app.keyboards.buttons["Return"].tap()

        let greetButton = app.buttons["GreetButton"]
        XCTAssertTrue(greetButton.exists, "인사하기 버튼이 존재해야 합니다.")
        greetButton.tap()

        let greetingText = app.staticTexts["GreetingText"]
        XCTAssertTrue(greetingText.waitForExistence(timeout: 5), "인사 문구가 화면에 나타나야 합니다.")
        XCTAssertEqual(greetingText.label, "안녕하세요, Soom!")
    }
}
