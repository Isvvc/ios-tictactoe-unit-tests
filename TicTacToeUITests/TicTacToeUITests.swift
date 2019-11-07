//
//  TicTacToeUITests.swift
//  TicTacToeUITests
//
//  Created by Isaac Lyons on 11/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest

class TicTacToeUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testWinVertically1() {
//        let button0 = XCUIApplication().buttons["button0"]
//        button0.tap()
//
//        let button1 = XCUIApplication().buttons["button1"]
//        button1.tap()
//
//        let button3 = XCUIApplication().buttons["button3"]
//        button3.tap()
//
//        let button4 = XCUIApplication().buttons["button4"]
//        button4.tap()
//
//        let button6 = XCUIApplication().buttons["button6"]
//        button6.tap()
//
//        let button7 = XCUIApplication().buttons["button7"]
//        button7.tap()
        
        let buttons = [0, 1, 3, 4, 6]
        
        var mark: Mark = .x
        for index in buttons {
            let button = self.button(forIndex: index)
            button.tap()
            XCTAssertEqual(button.label, mark.stringValue, "Button \(index) expected \(mark.stringValue)")
            mark = mark == .x ? .o : .x
        }
    }
    
    private var app: XCUIApplication {
        return XCUIApplication()
    }
    
    private func button(forIndex index: Int) -> XCUIElement {
        return app.buttons["button\(index)"]
    }
    
    private enum Mark: Equatable {
        case x
        case o
        
        var stringValue: String {
            switch self {
            case .x: return "X"
            case .o: return "O"
            }
        }
    }
    
}
