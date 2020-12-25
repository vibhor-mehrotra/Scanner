//
//  ImageScannerMock.swift
//  Scanner
//
//  Created by Vibhor Mehrotra on 25/12/20.
//

import UIKit
@testable import Scanner

class ImageScannerMock: ImageScannerProtocol{
    var shouldSucced = true
    
    func readText(in image: UIImage, completion: @escaping (Result<[String], ScannerError>) -> Void) {
        if shouldSucced{
            completion(.success(["test string"]))
        } else {
            completion(.failure(.invalidImage))
        }
    }
    
    
}
