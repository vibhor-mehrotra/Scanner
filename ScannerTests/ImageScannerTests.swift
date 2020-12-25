//
//  ImageScannerTests.swift
//  Scanner
//
//  Created by Vibhor Mehrotra on 24/12/20.
//

import XCTest
@testable import Scanner

class ImageScannerTests: XCTestCase {
    var imageScanner: ImageScanner!
    
    override func setUpWithError() throws {
        imageScanner = ImageScanner()
    }

    override func tearDownWithError() throws {
        imageScanner = nil
    }
    
    func testReadText() throws {
        let imageScanExpectation = expectation(description: "To test the fetch reviews Async API call success callback")
        imageScanner.readText(in: UIImage(named: "DummyIDCard.jpg", in: Bundle(for: ImageScannerTests.self), compatibleWith: nil)!){(result) in
            switch result {
            case .success(let output):
                XCTAssert(output.count == 11, "Scanned texts count not correct")
                XCTAssert(output[0] == "INTERNATIONAL PRESS")
                imageScanExpectation.fulfill()
            case .failure(let error):
                XCTFail("Scanning failed \(error)")
            }
        }
        wait(for: [imageScanExpectation], timeout: 10.0)
    }
}
