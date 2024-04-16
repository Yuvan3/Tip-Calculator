//
//  CalculationTests.swift
//  Tip CalculatorTests
//
//  Created by Yuvan Shankar on 16/04/2024.
//

import XCTest
@testable import Tip_Calculator

final class CalculationTests: XCTestCase {
    
    func testSuccessfulTipCalculation() {
        // Given (Arrange)
        let enteredAmount = 100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enteredAmount,
                                           with: tipSlider)
        
        // Then (Assert)
        XCTAssertEqual(tip, 25)
    }
    
    func testNegativeAmountTipCalculation() {
        // Given (Arrange)
        let enteredAmount = -100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enteredAmount,
                                           with: tipSlider)
        
        // Then (Assert)
        XCTAssertNil(tip)
    }
}
