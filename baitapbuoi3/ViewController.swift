//
//  ViewController.swift
//  baitapbuoi3
//
//  Created by CodeMe-IOS on 11/28/19.
//  Copyright © 2019 CodeMe-IOS. All rights reserved.
//

import UIKit
var lsMang = ["begie","goldan","pug"]
var lsText = [
                "1",
                "Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or other type of compatible computer.",
                "Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or other type of compatible computer."
]
class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.rowHeight = UITableView.automaticDimension 
        tableView.estimatedRowHeight = 140
        
    }


}
extension UIViewController : UITableViewDelegate, UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lsMang.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
        cell.name.text = lsText[indexPath.row]
        
        cell.avatar.image = UIImage(named: "\(lsMang[indexPath.row])")
        
        return cell
       
    }
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    public func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}

