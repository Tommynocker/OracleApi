//
//  File.swift
//  OracleApi
//
//  Created by Thomas Rakowski on 08.04.25.
//

import Fluent
import Vapor



final class Bedarfe: Model, Content {
    
    static let schema = "US_BLZ_BEDARFE"
    
    
    //tesr
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "ANR")
    var anr: String
    
    @Field(key: "MNR")
    var mnr: String?
    
    @Field(key: "ARTIKEL")
    var artikel: String?
    
    @Field(key: "STATUS")
    var status: String?
    
    @Field(key: "DATE")
    var termin: Date?
    
    @Field(key: "SOLL")
    var soll: Float?
    
    @Field(key: "IST")
    var ist: Float?
    
    @Field(key: "REST")
    var rest: Float?
    
    @Field(key: "KUNDE")
    var kunde: String?
    
   
    init() { }
    
    init(id: UUID = UUID(), anr: String, mnr: String?, artikel: String?, status: String?, termin: Date?, soll: Float?, ist: Float?, rest: Float?, kunde: String?) {
        self.id = id
        self.anr = anr
        self.mnr = mnr
        self.artikel = artikel
        self.status = status
        self.termin = termin
        self.soll = soll
        self.ist = ist
        self.rest = rest
        self.kunde = kunde
    }
}


