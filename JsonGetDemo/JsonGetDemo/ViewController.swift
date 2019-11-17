//
//  ViewController.swift
//  JsonGetDemo
//
//  Created by jabeed on 30/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit
struct jsonStruct:Decodable {
    let name:String
    let capital:String
    let alpha3Code:String
    let alpha2Code:String
    let region :String
    let subregion:String
    
}
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var arrayData = [jsonStruct]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.getData()
        // Do any additional setup after loading the view.
    }
    
    func getData() {
        
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do {
                if error == nil {
                    self.arrayData =  try JSONDecoder().decode([jsonStruct].self, from: data!)
                    
                    for mainArr in self.arrayData {
                       // print(mainArr.name,":",mainArr.capital,":",mainArr.alpha3Code)
                        DispatchQueue.main.async {
                            self.tableView.reloadData()

                        }
                    }
                }
            }catch {
                print("Error in get json data")
            }
            
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
        cell?.lblname.text = "Name:\(arrayData[indexPath.row].name)"
        cell?.lblcapital.text = "Capital:\(arrayData[indexPath.row].capital)"

        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let details:DetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "details") as! DetailsViewController
        details.strregion = "Region:\(arrayData[indexPath.row].region)"
        details.strsubregion = "Subregion:\(arrayData[indexPath.row].region)"
        details.stralpha2 = "Alpha2Code:\(arrayData[indexPath.row].region)"
        details.stralpha3 = "Alpha3Code:\(arrayData[indexPath.row].region)"
        self.navigationController?.pushViewController(details, animated: true)
    }
}

