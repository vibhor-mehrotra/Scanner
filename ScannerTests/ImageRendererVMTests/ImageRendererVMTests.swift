//
//  ImageRendererVMTests.swift
//  Scanner
//
//  Created by Vibhor Mehrotra on 25/12/20.
//

import XCTest
import AVFoundation
@testable import Scanner

class ImageRendererVMTests: XCTestCase {
    var imageRendererVM: ImageRendererVM!
    var imageScanner: ImageScannerProtocol!
    var didSucceed = false
    
    override func setUpWithError() throws {
        imageScanner = ImageScannerMock()
        imageRendererVM = ImageRendererVM(delegate: self, imageScanner: imageScanner, callback: {
            result in
            switch result{
            case .success:
                self.didSucceed = true
            case .failure:
                self.didSucceed = false
            }
        })
    }

    override func tearDownWithError() throws {
        imageRendererVM = nil
        imageScanner = nil
    }

    func testCameraSetup() throws {
        imageRendererVM.cameraSetup()
        XCTAssert(self.didSucceed == false, "camera setup method did not behave as expected")
    }
}

extension ImageRendererVMTests: ImageRendererDelegate{
    func setupLivePreview(with captureSession: AVCaptureSession){}
}
