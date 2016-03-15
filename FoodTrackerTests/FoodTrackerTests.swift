//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by andy on 3/10/16.
//  Copyright © 2016 andy. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        // Failure cases.
        let noMeal = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noMeal, "Empty name is invalid")
        let badRating = Meal(name: "Realy bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
}
