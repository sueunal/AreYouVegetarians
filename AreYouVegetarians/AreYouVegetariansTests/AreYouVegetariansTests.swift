//
//  AreYouVegetariansTests.swift
//  AreYouVegetariansTests
//
//  Created by soom on 7/18/25.
//

import XCTest
@testable import AreYouVegetarians

class HelloViewModelTests: XCTestCase {
    func testGreetSetsCorrectGreeting() {
        let viewModel = HelloViewModel()
        viewModel.name = "Steve"
        viewModel.greet()
        XCTAssertEqual(viewModel.greeting, "안녕하세요, Steve!")
    }
}
