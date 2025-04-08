//
//  File.swift
//  OracleApi
//
//  Created by Thomas Rakowski on 17.01.25.
//


import Vapor
import Fluent
import OracleNIO

struct OracleController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        let route = routes.grouped("api")
        // all wxz
        route.get("wxzall", use: getAllWXZ)
        
        // all IcastOrders
        route.get("icastorders", use: getAllCastOrders)
        
        // all Bedarfe
        route.get("allBedarfe", use: getAllBedarfe)
        
    }
    
    @Sendable
    func getWXZ(req: Request) async throws -> [WXZ] {
        
        guard let connection = req.application.storage[OracleStorageKey.self] else {
            throw Abort(.internalServerError, reason: "Oracle connection not found")
        }
        
        var sql = "SELECT * FROM US_BLZ_ARTIKELKONTO_WXZ"
                    
        if let werk = try? req.query.get(String.self, at: "werkstoff") {
            sql = sql + " WHERE WERKSTOFF LIKE '%\(werk)%'"
        }else {
            throw Abort(.badRequest)
        }
        
        
        
        let query = OracleStatement(stringLiteral: sql )
        let rows = try await connection.execute(query)
        
        var result = [WXZ]()
        
//        for try await (mnr, werkstoff, staerke,stk_v,kg_v,stk_l,kg_l,bedarfe_stk,verbr12_kg,ktxt,bemerkung,variante,gueltigkeit,verbrauchq1,verbrauchq2,verbrauchq3,verbrauchq4 ) in rows.decode((String, String, Float,Int,Int,Int,Int,Int,Int,String,String,String,String,Int,Int,Int,Int).self) {
//            
//            result.append(.init(mnr: mnr, werkstoff: werkstoff, staerke: staerke, stk_v: stk_v, kg_v: kg_v, stk_l: stk_l, kg_l: kg_l, bedarfe_stk: bedarfe_stk, verbr12_kg: verbr12_kg, ktxt: ktxt, bemerkung: bemerkung, variante: variante, gueltigkeit: gueltigkeit, verbrauchq1: verbrauchq1, verbrauchq2: verbrauchq2, verbrauchq3: verbrauchq3, verbrauchq4: verbrauchq4))
//        }
    
        return result
        
    }
    // all WxZ
    @Sendable
    func getAllWXZ(req: Request) async throws -> [WXZ] {
        
        guard let connection = req.application.storage[OracleStorageKey.self] else {
            throw Abort(.internalServerError, reason: "Oracle connection not found")
        }
        
        let sql = "SELECT *  FROM US_BLZ_ARTIKELKONTO_WXZ"
        
        
        let query = OracleStatement(stringLiteral: sql )
        let rows = try await connection.execute(query)
        
        var result = [WXZ]()
        
        for try await (mnr, werkstoff, zchnummer,staerke,laenge, breite, gewicht, verfuegbar_stk, verfuegbar_kg) in rows.decode((String, String, String, Float, Float, Float, Float, Int?, Int?).self) {
            
            result.append(.init(mnr: mnr, werkstoff: werkstoff, zchnummer: zchnummer, staerke: staerke,laenge: laenge, breite: breite,gewicht: gewicht, verfuegbar_stk: verfuegbar_stk ?? 0, verfuegbar_kg: verfuegbar_kg ?? 0))
        }
    
        return result
        
    }
    
    // ICAST_CAST_ORDERS
    @Sendable
    func getAllCastOrders(req: Request) async throws -> [CastOrders] {
        
        guard let connection = req.application.storage[OracleStorageKey.self] else {
            throw Abort(.internalServerError, reason: "Oracle connection not found")
        }
        
        let sql = "SELECT * FROM ICAST_CAST_ORDERS"
        
        
        let query = OracleStatement(stringLiteral: sql )
        let rows = try await connection.execute(query)
        
        var result = [CastOrders]()
        
        for try await (anr, artikel, wm, fv, formnr, abc, flgew, status, kw, datum, fis  ) in rows.decode((String,String, String, String, String, String, Float, String, String, String, String ).self) {
            
            result.append(.init(anr: anr, artikel: artikel, wm: wm, fv: fv, formnr: formnr, flgew: flgew, status: status, kw: kw, datum: datum, fis: fis))
        }
    
        return result
    }
    
    
    @Sendable
    func getAllBedarfe(req: Request) async throws -> [Bedarfe] {
        
        guard let connection = req.application.storage[OracleStorageKey.self] else {
            throw Abort(.internalServerError, reason: "Oracle connection not found")
        }
        
        let sql = "SELECT ANR, MNR, ARTIKEL, STATUS, TERMIN, SOLL, IST, REST, KUNDE FROM US_BLZ_BEDARFE WHERE MNR LIKE '06%'"
        
        let query = OracleStatement(stringLiteral: sql )
        let rows = try await connection.execute(query)
        
        var result = [Bedarfe]()
       
        for try await (anr, mnr, artikel, status, termin, soll, ist, rest, kunde) in rows.decode((String, String?, String?, String?, Date?, Float?, Float?, Float?, String?).self) {
           
            result.append(.init(anr: anr, mnr: mnr, artikel: artikel, status: status, termin: termin, soll: soll, ist: ist, rest: rest, kunde: kunde))
        }
        
        return result
    }
    
    
 
    
    
}
