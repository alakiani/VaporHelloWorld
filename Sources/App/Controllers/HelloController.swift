//
//  HelloController.swift
//  App
//
//  Created by Ala Kiani on 9/16/18.
//

import Vapor
import Crypto

final class HelloController {
    func greet(_ req: Request) throws -> String {
        let digest = try BCrypt.hash("vapor", cost: 4)
        return digest
    }
}
