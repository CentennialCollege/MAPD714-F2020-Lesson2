class Vector2D
{
    var x: Float
    var y: Float
    
    // initializer - like a constructor
    init(_ x: Float = 0, _ y: Float = 0) {
        self.x = x
        self.y = y
    }
    
    func toString() -> String
    {
        return "(\(self.x) , \(self.y))"
    }
}
