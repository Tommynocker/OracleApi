//
//  File.swift
//  OracleApi
//
//  Created by Thomas Rakowski on 17.01.25.
//


import Vapor
import Fluent
import OracleNIO

struct MariaController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        let route = routes.grouped("api")
       
        route.get("mariaTest", use: getTest)
    }
    
   // test
    
    @Sendable
    func getTest(req: Request) async throws -> [Test] {
     
       
        
        return try await Test.query(on: req.db).all()
    }
    
    
 
    
    
}
