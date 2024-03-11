//
//  SecondViewController.swift
//  AzObservation
//
//  Created by Sefa Aycicek on 11.03.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var onCallback : ((String)->())? = nil
    
    var prm : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onBack() {
        onCallback?("selam")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
