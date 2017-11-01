//
//  ViewController.swift
//  AlertController
//
//  Created by Ammy Pandey on 16/07/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    //First Call Function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //Called when alert button pressed
    @IBAction func alert_clicked(_ sender: Any) {
        
        //Declearing Alert Controller
        let alertController = UIAlertController(title: "Hello Alert", message: "This is my first alert controller", preferredStyle: UIAlertControllerStyle.alert)
        
        //Presenting Alert Controller
        self.present(alertController, animated: true, completion: nil)
    }
    
    //Second Alert With Completion Handler
    @IBAction func second_alert(_ sender: Any) {
        //Declear ALert controller
        let secondAlert = UIAlertController(title: "Hello Second Alert", message: "This is my second alert controller", preferredStyle: UIAlertControllerStyle.alert)
        
        //Creating Action For Alert Controller
        
        // OK action
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (action: UIAlertAction) in
            // reteriving text of Title of the current Action
            let actionTitle = action.title
            
            // reteriving text of 1st textfield
            let textFieldText = secondAlert.textFields?[0].text
            let textFieldText_1 = secondAlert.textFields?[1].text
            self.myLabel.text = textFieldText! + "" + textFieldText_1!
        }
        
        //Cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        
        
        //Delete action
        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.destructive) { (action: UIAlertAction) in
            // reteriving text of Title of the current Action
            let actionTitle = action.title
            self.myLabel.text = "\(actionTitle!) is pressed"
        }
        // disabling action button
        deleteAction.isEnabled = false
        
        // adding action to actionController
        secondAlert.addAction(okAction)
        secondAlert.addAction(cancelAction)
        secondAlert.addAction(deleteAction)
        
        
        // Adding UITextField in AlertContorller
        secondAlert.addTextField { (textFiled: UITextField) in
            textFiled.placeholder = "Login Please"
        }
        
        secondAlert.addTextField(configurationHandler: nil)
        
        
        //Presenting Alert Controller With Completion Handler
        //When Alert btn clicked then this code run
    
        self.present(secondAlert, animated: true) { 
            self.view.backgroundColor = UIColor.red
        }
        
    }
    

}

