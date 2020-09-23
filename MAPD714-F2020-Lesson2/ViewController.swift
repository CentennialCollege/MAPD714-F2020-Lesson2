


import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var HelloLabel: UILabel!
    
    @IBOutlet weak var TestField: UITextField!
    
    var IntResult: Float?
    var person: Person?

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        person = Person("Tom", 30)
        person!.saysHello()
        print(person!.location.toString())
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    

    @IBAction func PressMeButton_Pressed(_ sender: UIButton)
    {
        
               
        switch(sender.titleLabel!.text)
        {
            
        case "1":
            self.HelloLabel.text = (self.HelloLabel.text == "Goodbye, World!")
                ? "Hello, World!" : "Goodbye, World!"
        case "2":
            self.HelloLabel.text = "Button 2"
        case .none:
            print("")
        case .some(_):
            print("")
        }
        self.TestField.resignFirstResponder()
        
        /*
        self.HelloLabel.text = (self.HelloLabel.text == "Goodbye, World!")
            ? "Hello, World!" : "Goodbye, World!"
        self.TestField.resignFirstResponder()
        */
    }
    
    
    @IBAction func TestField_changed(_ sender: Any)
    {
        self.HelloLabel.text = self.TestField.text
    }
    
 
    
    @IBAction func TestField_EndOnExit(_ sender: Any)
    {
        
        self.IntResult = Float(self.TestField.text!)!
    
        
        self.TestField.resignFirstResponder()
        
    }
    
    
    
    
}

