//
//  ViewController.swift
//  TableView
//
//  Created by Codewalla on 12/07/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var AppTableView: UITableView!
    
    struct cells{
        var ImageName: String
        var LabelData: String
    }
    var array:[cells] = [
       cells( ImageName:"i1",LabelData:"Sunny"),
       cells( ImageName:"i2",LabelData:"Ravi"),
       cells( ImageName:"i3",LabelData:"Gaurav"),
       cells( ImageName:"i4",LabelData:"Sushant"),
       cells( ImageName:"i5",LabelData:"Zaosh")
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        AppTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = array[indexPath.row]
        let cell = AppTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.Label.text = cells.LabelData
        cell.ImageView.image = UIImage(named: cells.ImageName)
        return cell
}

}

