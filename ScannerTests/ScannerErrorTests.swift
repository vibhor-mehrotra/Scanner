//
//  ScannerErrorTests.swift
//  Scanner
//
//  Created by Vibhor Mehrotra on 24/12/20.
//

import XCTest
@testable import Scanner

class ScannerErrorTests: XCTestCase {
    var scannerError: ScannerError!
    
    override func tearDownWithError() throws {
        scannerError = nil
    }

    func testErrorDescription() throws {
        scannerError = .cameraInaccessable
        XCTAssert(scannerError.errorDescription == "Unable to access back camera. Please provide camera access to the app from settings and try again.", "Incorrect error description for cameraInaccessable")
        scannerError = .invalidImage
        XCTAssert(scannerError.errorDescription == "Image is invalid. Please try again.", "Incorrect error description for invalidImage")
        scannerError = .noTextFound
        XCTAssert(scannerError.errorDescription == "Text not found in Image.", "Incorrect error description for noTextFound")
        scannerError = .cameraInitiationError(message: "unable to initiate camera.")
        XCTAssert(scannerError.errorDescription == "Unable to initialize back camera: unable to initiate camera.", "Incorrect error description for cameraInitiationError")
        scannerError = .errorInTextDetection(message: "Error in text detection.")
        XCTAssert(scannerError.errorDescription == "Error in detecting text: Error in text detection.", "Incorrect error description for errorInTextDetection")
    }
}
