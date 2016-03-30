//
//  ReflectionTests.swift
//  ReflectionTests
//
//  Created by Christian Otkjær on 04/03/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Reflection

enum ReflectionTestEnum
{
    case One, Two
}

class ReflectionTests: XCTestCase
{
    func test_typeName_base_types()
    {
        XCTAssertEqual(typeName(String), "String")
        XCTAssertEqual(typeName(Int), "Int")
        XCTAssertEqual(typeName(Float), "Float")
        XCTAssertEqual(typeName(Double), "Double")
        XCTAssertEqual(typeName([String]), "Array<String>")
    }
    
    func test_typeName_custom_types()
    {
        XCTAssertEqual(typeName(NSObject), "NSObject")
        XCTAssertEqual(typeName(ReflectionTests), "ReflectionTests")
        XCTAssertEqual(typeName(ReflectionTestEnum), "ReflectionTestEnum")
        XCTAssertEqual(typeName(CGPoint), "CGPoint")
    }
    
    func test_typeName_base_values()
    {
        XCTAssertEqual(typeName("s"), "String")
        XCTAssertEqual(typeName(1), "Int")
        XCTAssertEqual(typeName(Float(1)), "Float")
        XCTAssertEqual(typeName(0.33), "Double")
        XCTAssertEqual(typeName(Double(0.5)), "Double")
        XCTAssertEqual(typeName(["s"]), "Array<String>")
    }

    typealias Func = ()->()
    
    func test_typeName_custom_values()
    {
        XCTAssertEqual(typeName(NSObject()), "NSObject")
        XCTAssertEqual(typeName(CGPoint(x: 0, y: 1)), "CGPoint")
        XCTAssertEqual(typeName(self), "ReflectionTests")
        XCTAssertEqual(typeName(Func), "() -> ()")
        XCTAssertEqual(typeName(ReflectionTestEnum.Two), "ReflectionTestEnum")
    }

}
