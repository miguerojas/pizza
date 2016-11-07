//
//  pizzawatch
//
//  Created by MIGUEL on 20/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//
import WatchKit
import Foundation


class ConfirmarController: WKInterfaceController {
    
    var pizza : Pizza = Pizza()

    @IBOutlet var texto: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        texto.setText(pizza.toString())
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func cocinar() {
        
        let cocinar = WKAlertAction(title: "Cocinar", style: WKAlertActionStyle.default, handler: { () -> Void in
        
            let cocinado = WKAlertAction(title: "Aceptar", style: WKAlertActionStyle.default, handler: { () -> Void in
                self.popToRootController()
            })
            
            self.presentAlert(withTitle: "Cocinado!!!", message: "Pizza Cocinada", preferredStyle: WKAlertControllerStyle.alert, actions: [cocinado])
            
        })
        
        let cancelar = WKAlertAction(title: "Cancelar", style: WKAlertActionStyle.default, handler: { ()-> Void in })
        
        self.presentAlert(withTitle: "Cocinar", message: "¿Seguro que deseas cocinar?", preferredStyle: WKAlertControllerStyle.sideBySideButtonsAlert, actions: [cocinar,cancelar])
        
    }
    

}
