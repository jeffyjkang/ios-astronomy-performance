//
//  FilterOperation.swift
//  Astronomy
//
//  Created by Jeff Kang on 1/17/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class FilterOperation: Operation {
    
    private(set) var image: UIImage?
    let fetchOperation: FetchPhotoOperation
    
    init(fetchOperation: FetchPhotoOperation) {
        self.fetchOperation = fetchOperation
    }
    
    override func main() {
        if let data = fetchOperation.imageData,
           let image = UIImage(data: data) {
            self.image = image.filtered()
            NSLog("Finished filtering image")
        }
    }
}
