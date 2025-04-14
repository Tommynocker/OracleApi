import Vapor
import OracleNIO
import Fluent
import FluentMySQLDriver


// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    // config oracle
    let config = OracleConnection.Configuration(
        host: "172.20.1.36",
        port: 12001,
        service: .serviceName("prod77"),
        username: "INFOR",
        password: "sysm"
    )
    
    let connection = try await OracleConnection.connect(
        configuration: config,
        id: 1
    )
    // Store the connection using the storage key
    app.storage[OracleStorageKey.self] = connection
    
    // Add shutdown hook to close connection
    app.lifecycle.use(OracleConnectionController(connection: connection))
    // end Oracle
   
    // config Maria
    app.databases.use(.mysql(hostname: "172.30.1.26", username: "api", password: "N16oftUZEXauA8SibME2", database: "energie"), as: .mysql)
    // end maria

    
    
    // register routes
    try routes(app)
}


extension DatabaseID {
    static var oracle: DatabaseID {
        return .init(string: "oracle")
    }
}

// Add storage key for OracleConnection
struct OracleStorageKey: StorageKey {
    typealias Value = OracleConnection
}

// Add connection controller for proper lifecycle management
private final class OracleConnectionController: LifecycleHandler {
    let connection: OracleConnection
    
    init(connection: OracleConnection) {
        self.connection = connection
    }
    
    func shutdown(_ application: Application) {
        try? connection.close()
    }
}
