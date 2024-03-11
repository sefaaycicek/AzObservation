//
//  ViewController.swift
//  AzObservation
//
//  Created by Sefa Aycicek on 11.03.2024.
//

import UIKit

let NOTIFICATION_KEY = "key_notification"

class ViewController: UIViewController {

    @IBOutlet weak var txtLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(messageReceived), 
                                               name: NSNotification.Name(NOTIFICATION_KEY),
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(messageReceived),
                                               name: UIDevice.orientationDidChangeNotification,
                                               object: nil)
        
        
        
        
    }

    @objc func messageReceived() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as? SecondViewController
        secondViewController?.prm = "Selam"
        secondViewController?.onCallback = { prm in
            
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(NOTIFICATION_KEY), object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    

}

