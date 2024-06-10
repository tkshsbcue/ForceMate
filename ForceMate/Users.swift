//
//  Users.swift
//  ForceMate
//
//  Created by Kumar Tanay on 10/06/24.
//

import Foundation


struct User: Codable{
    let id:String
    let name:String
    let email:String
    let joined:TimeInterval
}
