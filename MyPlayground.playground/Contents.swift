import Cocoa

protocol Building {
    var rooms: Int {get}
    var cost: Int {get set}
    var agent: String {get}
    func summary ()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent = "HomeSeller"
    func summary (){
        print("the House price of the property with \(rooms) rooms is \(cost) which was sold by \(agent)")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent = "OfficeSeller"
    func summary (){
        print("the Office price of the property with \(rooms) rooms is \(cost) which was sold by \(agent)")
    }
}

extension House {

    init(room: Int) {
        self.rooms = room
        self.cost = room * 100
        }
    }

extension Office {


    init(room: Int) {
        self.rooms = room
        self.cost = room * 200
        }
    }

let H1 = House(room: 3)
let O1 = Office(room: 2)
H1.summary()
O1.summary()
