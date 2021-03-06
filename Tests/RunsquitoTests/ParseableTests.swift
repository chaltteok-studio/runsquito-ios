//
//  ParseableTests.swift
//  RunsquitoTests
//
//  Created by jsilver on 2021/09/01.
//

import XCTest
@testable import Runsquito

final class ParseableTests: XCTestCase {
    // MARK: - Property
    
    // MARK: - Lifecycle
    
    // MARK: - Test
    func test_int_parseable_encode() throws {
        // MARK: Given
        let value = 10
        
        // MARK: When
        let data = try value.encode()
        
        // MARK: Then
        XCTAssertNotNil(data)
    }
    
    func test_int_parseable_decode() throws {
        // MARK: Given
        guard let data = "10".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        let value = try Int.decode(from: data)
        
        // MARK: Then
        XCTAssertEqual(value, 10)
    }
    
    func test_int_parseable_decode_fail() throws {
        // MARK: Given
        guard let data = "A".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        
        // MARK: Then
        XCTAssertThrowsError(try Int.decode(from: data))
    }
    
    func test_float_parseable_encode() throws {
        // MARK: Given
        let value: Float = 10.0
        
        // MARK: When
        let data = try value.encode()
        
        // MARK: Then
        XCTAssertNotNil(data)
    }
    
    func test_float_parseable_decode() throws {
        // MARK: Given
        guard let data = "10.0".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        let value = try Float.decode(from: data)
        
        // MARK: Then
        XCTAssertEqual(value, 10.0)
    }
    
    func test_float_parseable_decode_fail() throws {
        // MARK: Given
        guard let data = "A".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        
        // MARK: Then
        XCTAssertThrowsError(try Float.decode(from: data))
    }
    
    func test_double_parseable_encode() throws {
        // MARK: Given
        let value: Double = 10.0
        
        // MARK: When
        let data = try value.encode()
        
        // MARK: Then
        XCTAssertNotNil(data)
    }
    
    func test_double_parseable_decode() throws {
        // MARK: Given
        guard let data = "10.0".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        let value = try Double.decode(from: data)
        
        // MARK: Then
        XCTAssertEqual(value, 10.0)
    }
    
    func test_double_parseable_decode_fail() throws {
        // MARK: Given
        guard let data = "A".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        
        // MARK: Then
        XCTAssertThrowsError(try Double.decode(from: data))
    }
    
    func test_bool_parseable_encode() throws {
        // MARK: Given
        let value = true
        
        // MARK: When
        let data = try value.encode()
        
        // MARK: Then
        XCTAssertNotNil(data)
    }
    
    func test_bool_parseable_decode() throws {
        // MARK: Given
        guard let data = "true".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        let value = try Bool.decode(from: data)
        
        // MARK: Then
        XCTAssertEqual(value, true)
    }
    
    func test_bool_parseable_decode_fail() throws {
        // MARK: Given
        guard let data = "A".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        
        // MARK: Then
        XCTAssertThrowsError(try Bool.decode(from: data))
    }
    
    func test_string_parseable_encode() throws {
        // MARK: Given
        let value = "runsquito"
        
        // MARK: When
        let data = try value.encode()
        
        // MARK: Then
        XCTAssertNotNil(data)
    }
    
    func test_string_parseable_decode() throws {
        // MARK: Given
        guard let data = "runsquito".data(using: .utf8) else {
            XCTFail()
            return
        }
        
        // MARK: When
        let value = try String.decode(from: data)
        
        // MARK: Then
        XCTAssertEqual(value, "runsquito")
    }
}
