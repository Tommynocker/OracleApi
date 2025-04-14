//
//  File.swift
//  OracleApi
//
//  Created by Thomas Rakowski on 14.04.25.
//

import Fluent
import Vapor



final class Lagerauf: Model, Content {
    
    static let schema = "US_BLZ_LAFUELL"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "ANR")
    var anr: String
    
    @Field(key: "MNR")
    var mnr: String?
    
    @Field(key: "LETZTER_AG")
    var lastAG: String?
    
    @Field(key: "DATUM_AG")
    var dateAG: String?
    
    @Field(key: "TERMIN")
    var termin: Date?
    
    @Field(key: "SOLL")
    var soll: Float?
    
    @Field(key: "IST")
    var ist: Float?
    
    @Field(key: "REST")
    var rest: Float?
    
    @Field(key: "KOMM")
    var komm: String?
    
   
    init() { }
    
    init(id: UUID = UUID(), anr: String, mnr: String?, lastAG: String?, dateAG: String?, termin: Date?, soll: Float?, ist: Float?, rest: Float?, komm: String?) {
        self.id = id
        self.anr = anr
        self.mnr = mnr
        self.lastAG = lastAG
        self.dateAG = dateAG
        self.termin = termin
        self.soll = soll
        self.ist = ist
        self.rest = rest
        self.komm = komm
    }
}


