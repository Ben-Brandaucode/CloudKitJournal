//
//  Entry.swift
//  journal
//
//  Created by Ben Brandau Brandau on 3/30/20.
//  Copyright © 2020 Ben Brandau Brandau. All rights reserved.
//

import CloudKit

struct EntryConstants{
    static let TitleKey = "title"
    static let bodyKey = "body"
    static let TimestampKey = "timestamp"
    static let entryTypeKey = "entry"

}
class Entry {
    let title: String
    let bodyText: String
    let timestamp: Date
    let ckRecord: CKRecord.ID

    init (title: String, bodyText: String, timestamp: Date = Date(), ckRecordID: CKRecord.ID = CKRecord.ID(recordName: UUID().uuidString))
        {
        self.title = title
        self.bodyText = bodyText
        self.timestamp = timestamp
        self.ckRecord = ckRecordID
        }

} //end of class

extension CKRecord {
    convenience init (entry:Entry){
        self.init (recordType: EntryConstants.entryTypeKey, recordID:entry.ckRecord)
        self.setValuesForKeys([
            EntryConstants.TitleKey : entry.title,
            EntryConstants.bodyKey : entry.bodyText,
            EntryConstants.TimestampKey: entry.timestamp])
}
}
