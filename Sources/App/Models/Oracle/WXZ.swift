import Fluent
import Vapor


final class WXZ: Model, Content {
    
    static let schema = "US_BLZ_ARTIKELKONTO_WXZ"
    
    
    //tesr
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "MNR")
    var mnr: String
    
    @Field(key: "WERKSTOFF")
    var werkstoff: String
    
    @Field(key: "ZCHNUMMER")
    var zchnummer: String
    
    @Field(key: "STAERKE")
    var staerke: Float
    
    @Field(key: "LAENGE")
    var laenge: Float
    
    @Field(key: "BREITE")
    var breite: Float
    
    @Field(key: "GEWICHT")
    var gewicht: Float
    
   
    
   
    init() { }
    
    init(id: UUID? = nil, mnr: String, werkstoff: String, staerke: Float, laenge: Float, breite: Float, gewicht: Float) {
        self.id = id
        self.mnr = mnr
        self.werkstoff = werkstoff
        self.staerke = staerke
    }
}

