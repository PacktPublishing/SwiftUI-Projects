//
//  CloudKitHelper.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/20/20.
//

import CloudKit

struct CloudKitHelper {
    
    // Databases
    static let publicDB = CKContainer.shared.publicCloudDatabase // (1)

    static func getRecords(recordType: CKRecord.RecordType = CKConstant.RecordType.Brand,
                           cursor: CKQueryOperation.Cursor? = nil,
                           completion: @escaping (([CKRecord]) -> Void)) {
        let operation: CKQueryOperation // 1
        if let cursor = cursor {
            operation = CKQueryOperation(cursor: cursor) // 2
        } else {
            operation = CKQueryOperation(query: CKQuery(recordType: recordType, predicate: .init(value: true))) // 3
        }
        var records: [CKRecord] = [] // 4
        operation.recordFetchedBlock = { record in // 5
            records.append(record)
        }
        operation.queryCompletionBlock = { cursor, error in // 6
            if let cursor = cursor {
                getRecords(cursor: cursor) { fetchedRecords in // 7
                    records.append(contentsOf: fetchedRecords) // 8
                    completion(records)
                }
            } else { completion(records) } // 9
        }
        CloudKitHelper.publicDB.add(operation) // 10
    }

    static func fetchAllSizes(products: [Product], completion: @escaping ([Product], Error?) -> Void) {
        let recordIDs = products.map { $0.record[.sizes] as! [CKRecord.Reference] }.reduce([], +).map { $0.recordID }
        var prod = products
        let operation = CKFetchRecordsOperation(recordIDs: recordIDs)

        operation.fetchRecordsCompletionBlock = { result, error in
            if let _ = result?.values {
                prod.enumerated().forEach { (index, product) in
                    let productSizes = product.record[.sizes] as! [CKRecord.Reference]
                    let x = productSizes.map { $0.recordID }
                    CloudKitHelper.fetchSizes(x) { (sizes) in
                        prod[index].sizes = sizes
                        completion(prod, error)
                    }
                }
            }
        }

        CloudKitHelper.publicDB.add(operation)
    }

    
    static func fetchSizes(_ recordIDs: [CKRecord.ID], completion: @escaping ([Size]) -> Void) {
        var recordSizes:[Size] = []
        let fetchOperation = CKFetchRecordsOperation(recordIDs: recordIDs)
        
        fetchOperation.fetchRecordsCompletionBlock = {
            records, error in
            if error != nil {
                print("\(error!)")
            } else {
                if let records = records {
                    for record in records {
                        recordSizes.append(Size(record: record.value))
                    }
                }
                
                DispatchQueue.main.async {
                    var sorted = recordSizes.sorted(by: { $0.size < $1.size })
                    completion(sorted)
                    sorted = []
                }
            }
        }
        
        CloudKitHelper.publicDB.add(fetchOperation)
    }

}


