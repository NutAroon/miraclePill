//
//  ViewController.swift
//  nutaroon-tableView
//
//  Created by Nut Aroonrunangaram on 10/10/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    var uglyThings = ["https://s-media-cache-ak0.pinimg.com/originals/d8/cd/6c/d8cd6ca49199dda99af83fffcab19a62.jpg","https://s-media-cache-ak0.pinimg.com/originals/ef/56/6d/ef566dc5bbae3b9b6ddcee3b4feeac14.jpg","https://s-media-cache-ak0.pinimg.com/236x/a6/a6/7e/a6a67ebffb84f8dc3d55550008690e4f.jpg","https://s-media-cache-ak0.pinimg.com/originals/af/9b/87/af9b876d69c2b827c365d47669472dd0.jpg","http://omgcutethings.com/wp-content/uploads/2013/12/cutest-things-120213-06.jpg"]
    var uglyTitles = ["That cute", "This one is so cute","Look that cute","Somebody cute","Nice cat!"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "uglyCell") as? UglyCell {
            
            var img: UIImage!
            
            let url = NSURL(string: uglyThings[indexPath.row])!
            if let data = NSData(contentsOf: url as URL){
                img = UIImage(data: data as Data)
            } else {
                img = UIImage(named: "images")
            }
            
            cell.configureCell(image: img, text: uglyTitles[indexPath.row])
            
            return cell
        } else {
            return UglyCell()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }
}

