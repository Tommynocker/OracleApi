import Fluent
import Vapor


final class WXZ: Model, Content {
    
    static let schema = "US_BLZ_ARTIKELKONTO_WXZ"
    
    
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "mnr")
    var mnr: String
    
    @Field(key: "werkstoff")
    var werkstoff: String
    
    @Field(key: "staerke")
    var staerke: Float
    
    @Field(key: "stk_v")
    var stk_v: Int
    
    @Field(key: "kg_v")
    var kg_v: Int
    
    @Field(key: "stk_l")
    var stk_l: Int
    
    @Field(key: "kg_l")
    var kg_l: Int
    
    @Field(key: "bedarfe_stk")
    var bedarfe_stk: Int
    
    @Field(key: "verbr12_kg")
    var verbr12_kg: Int
    
    @Field(key: "ktxt")
    var ktxt: String
    
    @Field(key: "bemerkung")
    var bemerkung: String?
    
    @Field(key: "variante")
    var variante: String
    
    @Field(key: "gueltigkeit")
    var gueltigkeit: String
    
    @Field(key: "verbrauchq1")
    var verbrauchq1: Int
    
    @Field(key: "verbrauchq2")
    var verbrauchq2: Int
    
    @Field(key: "verbrauchq3")
    var verbrauchq3: Int
    
    @Field(key: "verb4auchq1")
    var verbrauchq4: Int
    
   
    init() { }
    
    init(id: UUID? = nil, mnr: String, werkstoff: String, staerke: Float, stk_v: Int, kg_v: Int, stk_l: Int, kg_l: Int, bedarfe_stk: Int, verbr12_kg: Int, ktxt: String, bemerkung: String? = nil, variante: String, gueltigkeit: String, verbrauchq1: Int, verbrauchq2: Int, verbrauchq3: Int, verbrauchq4: Int) {
        self.id = id
        self.mnr = mnr
        self.werkstoff = werkstoff
        self.staerke = staerke
        self.stk_v = stk_v
        self.kg_v = kg_v
        self.stk_l = stk_l
        self.kg_l = kg_l
        self.bedarfe_stk = bedarfe_stk
        self.verbr12_kg = verbr12_kg
        self.ktxt = ktxt
        self.bemerkung = bemerkung
        self.variante = variante
        self.gueltigkeit = gueltigkeit
        self.verbrauchq1 = verbrauchq1
        self.verbrauchq2 = verbrauchq2
        self.verbrauchq3 = verbrauchq3
        self.verbrauchq4 = verbrauchq4
    }
}

