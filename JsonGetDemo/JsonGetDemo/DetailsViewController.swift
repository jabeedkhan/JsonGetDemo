//
//  DetailsViewController.swift
//  JsonGetDemo
//
//  Created by jabeed on 31/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var alpha2: UILabel!
    @IBOutlet weak var alpha3: UILabel!
    @IBOutlet weak var subregion: UILabel!
    @IBOutlet weak var region: UILabel!
    var stralpha2 = ""
    var stralpha3 = ""
    var strregion = ""
    var strsubregion = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alpha2.text = stralpha2
        alpha3.text = stralpha3
        region.text = strregion
        subregion.text = strsubregion

        // Do any additional setup after loading the view.
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
