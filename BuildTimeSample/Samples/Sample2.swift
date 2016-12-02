//
//  Sample2.swift
//  BuildTimeSample
//
//  Created by Naoto Onagi on 2016/11/29.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import Foundation

class Sample2 {

    struct Data {
        let user: User?
        let errorCode: Int
        let description: String?
    }

    struct User {
        let id: String?
        let name: String?
    }

    func lateMethod(data: Data) {
        self.log(data: [
            "userId": data.user?.id ?? "userId",
            "userName:": data.user?.name ?? "userName",
            "errorCodeString": "\(data.errorCode)",
            "description": data.description ?? "Description"
            ])
    }

    func fastMethod(data: Data) {
        let userId = data.user?.id ?? "userId"
        let userName = data.user?.name ?? "userName"
        let errorCodeString = "\(data.errorCode)"
        let description = data.description ?? "Description"

        let data = [
            "userId": userId,
            "userName:": userName,
            "errorCodeString": errorCodeString,
            "description": description
        ]
        self.log(data: data)
    }

    private func log(data: [String: Any]) {
        // Send log data to server
    }
}
