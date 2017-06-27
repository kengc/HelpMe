//
//  File.swift
//  HelpMe
//
//  Created by Kevin Cleathero on 2017-06-26.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

import Foundation

class HelpUserModel : NSObject {

    var firstName:String
    var lastName:String
    var age:Int
    var latCoordinate:Double
    var lonCoordinate:Double
    var phoneNumber:Int
    var address:String  //(for annotations)
    //let healthCondition:String
    //let certification:String
    var isResponder:Bool
    var doesNeedHelp:Bool
    
    
    init(firstname:String, lastname:String, age:Int, latcoordinate:Double, lonCoordinate:Double, phonenumber:Int, address:String, isresponder:Bool, doesneedhelp:Bool){
        self.firstName = firstname
        self.lastName = lastname
        self.age = age
        self.latCoordinate = latcoordinate
        self.lonCoordinate = lonCoordinate
        self.phoneNumber = phonenumber
        self.address = address
        self.doesNeedHelp = doesneedhelp
        self.isResponder = isresponder
        
    }
    
}
