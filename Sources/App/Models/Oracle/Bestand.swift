//
//  File.swift
//  OracleApi
//
//  Created by Thomas Rakowski on 09.04.25.
//

import Fluent
import Vapor


import Fluent
import Vapor

final class Bestand: Model, Content {
    
    static let schema = "US_BLZ_BESTAND"
    
    @ID(key: .id)
    var id: UUID?
    
    // Core properties
    @Field(key: "ARTIKELNR")
    var artikelnr: String
    
    @Field(key: "ME")
    var me: String?
    
    // Dimensions
    @Field(key: "LAENGE")
    var laenge: Float?
    
    @Field(key: "BREITE")
    var breite: Float?
    
    @Field(key: "HOEHE")
    var hoehe: Float?
    
    @Field(key: "MENGE")
    var menge: Float?
    
    // Storage information
    @Field(key: "LAGERORT")
    var lagerort: String?
    
    @Field(key: "CHARGENNR")
    var charge: String?
    
    // Entry details
    @Field(key: "ZUGANGSDAT")
    var zugangsdat: Date?
    
    @Field(key: "ZUGANGSAUFTRAG")
    var zugangsauftrag: String?
    
    @Field(key: "ZUGANGSIDENT")
    var zugangsident: Int?
    
    @Field(key: "LIEFERANTENNR")
    var lieferantennr: String?
    
    // Exit details
    @Field(key: "ABGANGSDAT")
    var abgangsdat: Date?
    
    @Field(key: "ABGANGSAUFTRAG")
    var abgangsauftrag: String?
   
    @Field(key: "ABGANGSIDENT")
    var abgangsident: Float?
    
    // Status and customer info
    @Field(key: "ZUSTAND")
    var zustand: Float?
    
    @Field(key: "KUNDENNR")
    var kundennr: String?
    
    // Custom fields
    @Field(key: "SCSTRING_1")
    var scstring_1: String?
    
    @Field(key: "USERFELD")
    var userfeld: String?
    
    @Field(key: "SCSTRING_3")
    var scstring_3: String?
    
    @Field(key: "SCSTRING_4")
    var scstring_4: String?
    
    @Field(key: "SCNUMBER_1")
    var scnumber_1: Float?
    
    @Field(key: "SCNUMBER_2")
    var scnumber_2: Float?
    
    @Field(key: "SCNUMBER_3")
    var scnumber_3: Float?
    
    @Field(key: "LVANZ")
    var lvanz: Float?
    
    @Field(key: "ASSIGNSTATUS")
    var assignstatus: Float?
    
    @Field(key: "STOCKITEMID")
    var stockitemid: Float?
    
    init() { }
    
    init(
        id: UUID? = UUID(),
        artikelnr: String,
        laenge: Float? = nil,
        me: String? = nil,
        breite: Float? = nil,
        hoehe: Float? = nil,
        menge: Float? = nil,
        lagerort: String? = nil,
        charge: String? = nil,
        zugangsdat: Date? = nil,
        zugangsauftrag: String? = nil,
        zugangsident: Int? = nil,
        lieferantennr: String? = nil,
        abgangsdat: Date? = nil,
        abgangsauftrag: String? = nil,
        abgangsident: Float? = nil,
        zustand: Float? = nil,
        kundennr: String? = nil,
        scstring_1: String? = nil,
        userfeld: String? = nil,
        scstring_3: String? = nil,
        scstring_4: String? = nil,
        scnumber_1: Float? = nil,
        scnumber_2: Float? = nil,
        scnumber_3: Float? = nil,
        lvanz: Float? = nil,
        assignstatus: Float? = nil,
        stockitemid: Float? = nil
    ) {
        self.id = id
        self.artikelnr = artikelnr
        self.me = me
        self.laenge = laenge
        self.breite = breite
        self.hoehe = hoehe
        self.menge = menge
        self.lagerort = lagerort
        self.charge = charge
        self.zugangsdat = zugangsdat
        self.zugangsauftrag = zugangsauftrag
        self.zugangsident = zugangsident
        self.lieferantennr = lieferantennr
        self.abgangsdat = abgangsdat
        self.abgangsauftrag = abgangsauftrag
        self.abgangsident = abgangsident
        self.zustand = zustand
        self.kundennr = kundennr
        self.scstring_1 = scstring_1
        self.userfeld = userfeld
        self.scstring_3 = scstring_3
        self.scstring_4 = scstring_4
        self.scnumber_1 = scnumber_1
        self.scnumber_2 = scnumber_2
        self.scnumber_3 = scnumber_3
        self.lvanz = lvanz
        self.assignstatus = assignstatus
        self.stockitemid = stockitemid
    }
}
