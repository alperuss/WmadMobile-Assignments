//
//  Accounts.swift
//  PortalProject
//
//  Created by Alper Us on 2022-09-12.
//

import Foundation

class Accounts {
    var user:String
    var password:String
    
    init(userInit:String,passwordInit:String){
        self.user=userInit
        self.password=passwordInit
    }
    func getUser()->String{
        return self.user
    }
    func getPassword()->String{
        return self.password
    }
}
