//
//  pizzawatch
//
//  Created by MIGUEL on 20/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//
import WatchKit
import Foundation


class QuesoController: WKInterfaceController {
    
    var pizza : Pizza = Pizza()
    
    @IBOutlet var bMoz: WKInterfaceButton!
    
    @IBOutlet var bChe: WKInterfaceButton!
    
    @IBOutlet var bPar: WKInterfaceButton!
    
    @IBOutlet var bSin: WKInterfaceButton!
    
    let color1 : UIColor = UIColor.blue
    let color2 : UIColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1)

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        pizza = context as! Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        accion(pizza.queso, opt: false)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func push1() {
        accion(0, opt: true)
    }
    
    
    @IBAction func push2() {
        accion(1, opt: true)
    }
    
    
    @IBAction func push3() {
        accion(2, opt: true)
    }
    
    
    @IBAction func push4() {
        accion(3, opt: true)
    }
    
    func accion(_ pos : Int, opt : Bool){
        if(pos==0){
            bMoz.setBackgroundColor(color1)
            pizza.queso=0
        }
        else{
            bMoz.setBackgroundColor(color2)
        }
        if(pos==1){
            bChe.setBackgroundColor(color1)
            pizza.queso=1
        }
        else{
            bChe.setBackgroundColor(color2)
        }
        if(pos==2){
            bPar.setBackgroundColor(color1)
            pizza.queso=2
        }
        else{
            bPar.setBackgroundColor(color2)
        }
        if(pos==3){
            bSin.setBackgroundColor(color1)
            pizza.queso=3
        }
        else{
            bSin.setBackgroundColor(color2)
        }
        if(opt){
            pushController(withName: "IDIngredientes", context: pizza)
        }
        
    }
    

}
