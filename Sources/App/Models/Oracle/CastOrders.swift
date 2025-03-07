//
//  File.swift
//  OracleApi
//
//  Created by Thomas Rakowski on 05.03.25.
//

import Fluent
import Vapor


final class CastOrders: Model, Content {
    
    static let schema = "ICAST_CAST_ORDERS"
    
    
    //tesr
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "ANR")
    var anr: String
    
    @Field(key: "ARTIKEL")
    var artikel: String
    
    @Field(key: "WERKST")
    var wm: String
    
    @Field(key: "FV")
    var fv: String
    
    @Field(key: "FORMNR")
    var formnr: String
    
    @Field(key: "ABC")
    var abc: String?
    
    @Field(key: "FLGEW")
    var flgew: Float
    
    @Field(key: "STATUS")
    var status: String
    
    @Field(key: "KW")
    var kw: String
    
    @Field(key: "DATUM")
    var datum: String
    
    @Field(key: "FIS")
    var fis: String
   
    
   
    init() { }
    
    init(id: UUID = UUID(), anr: String, artikel: String, wm: String, fv: String, formnr: String, abc: String? = nil, flgew: Float, status: String, kw: String, datum: String, fis: String) {
        self.anr = anr
        self.artikel = artikel
        self.wm = wm
        self.fv = fv
        self.formnr = formnr
        self.abc = abc
        self.flgew = flgew
        self.status = status
        self.kw = kw
        self.datum = datum
        self.fis = fis
    }
}

