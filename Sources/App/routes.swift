import Vapor
import Foundation

func routes(_ app: Application) throws {
    // Middleware
    app.middleware.use(LogMiddleware())
    
    // register Oracle Controller
    try app.register(collection: OracleController())
    
    // register Maria Controller
    try app.register(collection: MariaController())
    
}
