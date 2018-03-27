//
//  MySocket.swift
//  SocketTestObjC
//
//  Created by Sebastian Strus on 2018-03-27.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import Foundation
import SwiftSocket

@objc class MySocket: NSObject {
    
    func sayHello() {
        Swift.print("Hello from Swift!")
        let client = TCPClient(address: "192.168.20.111", port: 5188)
        
        switch client.connect(timeout: 6) {
        case .success:
            //sleep(1)
            switch client.send(string: "47\n{\"version\":\"1\",\"message_type\":\"get_properties\"}" ) {
            case .success:
                sleep(1)
                guard let data = client.read(1024*10) else { return }
                
                if let response = String(bytes: data, encoding: .utf8) {
                    print("response: \(response)")
                }
            case .failure(let error):
                print("1: \(error)")
            }
        case .failure(let error):
            print("2: \(error)")
        }
    }
    
}
