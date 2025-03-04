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
    
    @Field(key: "VERFUEGBAR_STK")
    var verfuegbar_stk: Int?
    
    @Field(key: "VERFUEGBAR_KG")
    var verfuegbar_kg: Int?
   
    
   
    init() { }
    
    init(id: UUID = UUID(), mnr: String, werkstoff: String, zchnummer: String, staerke: Float, laenge: Float, breite: Float, gewicht: Float, verfuegbar_stk: Int, verfuegbar_kg: Int) {
        self.id = id
        self.mnr = mnr
        self.werkstoff = werkstoff
        self.zchnummer = zchnummer
        self.staerke = staerke
        self.laenge = laenge
        self.breite = breite
        self.gewicht = gewicht
        self.verfuegbar_stk = verfuegbar_stk
        self.verfuegbar_kg = verfuegbar_kg
      
    }
}

