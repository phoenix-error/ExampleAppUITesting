//
//  ExampleAppUITestingUITests.swift
//  ExampleAppUITestingUITests
//
//  Created by Luca Becker on 13.02.23.
//

import XCTest

final class ExampleAppUITestingUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        app.launch()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
    }

    override func tearDownWithError() throws {
        app = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCanLogin() {
        let emailTextField = app.textFields["emailTextField"]
        XCTAssert(emailTextField.waitForExistence(timeout: 5), "Email text field couldn't be found")
        emailTextField.tap()
        emailTextField.typeText("test@test.test")
        
        let passwordTextField = app.secureTextFields["passwordTextField"]
        XCTAssert(passwordTextField.waitForExistence(timeout: 3), "Password text field couldn't be found")
        passwordTextField.tap()
        passwordTextField.typeText("password")
        
        let loginButton = app.buttons["loginButton"]
        XCTAssert(loginButton.waitForExistence(timeout: 3), "Login button couldn't be found")
        XCTAssert(loginButton.isEnabled, "Login button not enabled")
        loginButton.tap()
    }
}
