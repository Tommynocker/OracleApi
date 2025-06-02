//
//  Angebote.swift
//  OracleApi
//
//  Created by Thomas Rakowski on 02.06.25.
//

import Fluent
import Vapor


final class Angebote: Model, Content {
    
    static let schema = "US_BLZ_ANGEBOTE"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "CREATEDATE")
    var date: Date?
    
    @Field(key: "CREATEUSER")
    var createUser: String?

    @Field(key: "ANR")
    var anr: String
    
    @Field(key: "MNR")
    var mnr: String?
    
    @Field(key: "KTXT")
    var ktxt: String?
    
    @Field(key: "KOMM")
    var komm: String?
    
    @Field(key: "ZDESC")
    var zdesc: String?
    
   
    init() { }
    
    init(id: UUID = UUID(), createUser: String?, date: Date?, anr: String, mnr: String?, ktxt: String?, komm: String?, zdesc: String?) {
        self.date = date
        self.createUser = createUser
        self.anr = anr
        self.mnr = mnr
        self.ktxt = ktxt
        self.komm = komm
        self.zdesc = zdesc
    }
}



