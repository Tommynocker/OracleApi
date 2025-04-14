//
//  File.swift
//  OracleApi
//
//  Created by Thomas Rakowski on 30.01.25.
//

import Fluent
import Vapor



final class Test: Model, Content {
    
    static let schema = "gaszaehler"
    
    // id fdfdf
    @ID(custom: .id)
    var id: Int?
    
    @Field(key: "createdate")
    var createdate: Date
    
    @Field(key: "ip")
    var ip: String?
    
    @Field(key: "zaehlernummer")
    var nummer: String?
    
    
    

    init() { }
    
    init(id: Int, ip: String? = nil, nummer: String? = nil, createdate: Date){
        self.id = id
        self.createdate = createdate
    }
    
    
    
    
}

