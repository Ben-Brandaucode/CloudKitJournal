//
//  Entry Controller.swift
//  journal
//
//  Created by Ben Brandau Brandau on 3/30/20.
//  Copyright © 2020 Ben Brandau Brandau. All rights reserved.
//

import Foundation
import CloudKit

class EntryController {
    
    
    static let sharedInstance = EntryController()
    var entries: [Entry] = []
    
    let privateDB = CKContainer.default().privateCloudDatabase
    
    func createEntry(with title: String)
}
