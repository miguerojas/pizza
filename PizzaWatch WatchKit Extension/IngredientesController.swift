
//
//  pizzawatch
//
//  Created by MIGUEL on 20/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//
import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    
    var pizza : Pizza = Pizza()
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    
    @IBOutlet var pepe: WKInterfaceSwitch!

    @IBOutlet var pavo: WKInterfaceSwitch!
    
    @IBOutlet var salchicha: WKInterfaceSwitch!
    
    @IBOutlet var aceituna: WKInterfaceSwitch!
    
    @IBOutlet var cebolla: WKInterfaceSwitch!
    
    @IBOutlet var pimiento: WKInterfaceSwitch!
    
    @IBOutlet var pinya: WKInterfaceSwitch!
    
    @IBOutlet var anchoa: WKInterfaceSwitch!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        ponerIng()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func continuar() {
        var cont: Int = 0
        for i in 0...8 {
            if(pizza.ingredientes[i]==1){
                cont += 1
            }
        }
        if(cont<1 || cont>5){
            let ok = WKAlertAction(title: "OK", style: WKAlertActionStyle.cancel, handler: { () -> Void in })
            self.presentAlert(withTitle: "Advertencia!!", message: "Debes elegir entre 1 y 5 ingredientes", preferredStyle: WKAlertControllerStyle.alert, actions: [ok])
        }
        else{
            pushController(withName: "IDConfirmar", context: pizza)
        }
    }
    
    func ponerIng(){
        jamon.setOn((pizza.ingredientes[0]==1))
        pepe.setOn((pizza.ingredientes[1]==1))
        pavo.setOn((pizza.ingredientes[2]==1))
        salchicha.setOn((pizza.ingredientes[3]==1))
        aceituna.setOn((pizza.ingredientes[4]==1))
        cebolla.setOn((pizza.ingredientes[5]==1))
        pimiento.setOn((pizza.ingredientes[6]==1))
        pinya.setOn((pizza.ingredientes[7]==1))
        anchoa.setOn((pizza.ingredientes[8]==1))
    }
    
    @IBAction func jamonC(_ value: Bool) {
        pizza.ingredientes[0]=(value ? 1 : 0)
    }
    
    @IBAction func pepeC(_ value: Bool) {
        pizza.ingredientes[1]=(value ? 1 : 0)
    }
    
    @IBAction func pavoC(_ value: Bool) {
        pizza.ingredientes[2]=(value ? 1 : 0)
    }
    
    @IBAction func salchichaC(_ value: Bool) {
        pizza.ingredientes[3]=(value ? 1 : 0)
    }
    
    @IBAction func aceitunaC(_ value: Bool) {
        pizza.ingredientes[4]=(value ? 1 : 0)
    }
    
    @IBAction func cebollaC(_ value: Bool) {
        pizza.ingredientes[5]=(value ? 1 : 0)
    }
    
    @IBAction func pimientoC(_ value: Bool) {
        pizza.ingredientes[6]=(value ? 1 : 0)
    }
    
    @IBAction func pinyaC(_ value: Bool) {
        pizza.ingredientes[7]=(value ? 1 : 0)
    }
    
    @IBAction func anchoaC(_ value: Bool) {
        pizza.ingredientes[8]=(value ? 1 : 0)
    }
}
