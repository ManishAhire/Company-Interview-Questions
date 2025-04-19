//
//  KaiserUITestUITestsLaunchTests.swift
//  KaiserUITestUITests
//
//  Created by Manish on 13/12/24.
//

import XCTest

final class KaiserUITestUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        
        let txtUserName = app.textField("userName")
        let txtPassword = app.secureTextFields("password")
        let btnLogin = app.button("loginButton")
        
        txtUserName.tap()
        txtUserName.typeText("Test")
        
        txtPassword.tap()
        txtPassword.typeText("1234")
        
        btnLogin.tap()
        
        let homeScreenLabel = app.staticTexts("xyz")
        XCTAssert(homeScreenLabel.exists, "Failed")
    }
}
