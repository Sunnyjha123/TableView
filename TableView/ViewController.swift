//
//  ViewController.swift
//  TableView
//
//  Created by Codewalla on 12/07/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var AppTableView: UITableView!
    
    @IBOutlet weak var ViewLabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    
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
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    
    }

}

