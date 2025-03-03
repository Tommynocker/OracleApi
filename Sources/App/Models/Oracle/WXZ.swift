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
    
    init(id: UUID = UUID(), mnr: String, werkstoff: String, zchnummer: String, staerke: Float, laenge: Float, breite: Float, gewicht: Float) {
        self.id = id
        self.mnr = mnr
        self.werkstoff = werkstoff
        self.zchnummer = zchnummer
        self.staerke = staerke
        self.laenge = laenge
        self.breite = breite
        self.gewicht = gewicht
      
    }
}

