class Person
{
    var name: String
    var age: Int
    var location: Vector2D
    
    // like a constructor
    init(_ name: String = "", _ age: Int = 0)
    {
        self.name = name
        self.age = age
        self.location = Vector2D(10, 20)
    }
    
    func saysHello() -> Void
    {
        print("\(self.name) says Hello!")
    }
}
