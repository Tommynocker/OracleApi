import Vapor
import Foundation

func routes(_ app: Application) throws {
    // Middleware
    app.middleware.use(LogMiddleware())
    
    // register Oracle Controller
    try app.register(collection: OracleController())
    
<<<<<<< Updated upstream
    // register Controller
=======
    // register Maria Controller
>>>>>>> Stashed changes
    try app.register(collection: MariaController())
    
}
