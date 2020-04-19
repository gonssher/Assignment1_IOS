//
//  TableViewController.swift
//  Assignment1_sherwinGonsalves
//
//  Created by Sherwin on 2020-03-26.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class TableViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    
    @IBOutlet weak var loadSelectedImage: UIImageView!
    
    
     let mainDelegate = UIApplication.shared.delegate as! AppDelegate

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainDelegate.users.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SiteCell ?? SiteCell(style: .default,reuseIdentifier : "cell")
        let rowNum = indexPath.row
        tableCell.primaryLabel.text = mainDelegate.users[rowNum].name
        tableCell.secondaryLabel.text = mainDelegate.users[rowNum].email

        if mainDelegate.users[rowNum].image == "Image Chosen is car" {
            tableCell.teamImageView.image = UIImage.init(named: "car.png")
        }
        else if mainDelegate.users[rowNum].image == "Image Chosen is Plane"
        {
            tableCell.teamImageView.image = UIImage(named: "aircraft.jpg")
        }
        else if  mainDelegate.users[rowNum].image == "Image Chosen is Bus"
        {
              tableCell.teamImageView.image = UIImage(named: "bus.png")
        }
                tableCell.accessoryType = .disclosureIndicator
        
        return tableCell
        
    }
    
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let rowNum = indexPath.row
        let alertController = UIAlertController(title: mainDelegate.users[rowNum].name, message: mainDelegate.users[rowNum].image, preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "ok", style: .cancel, handler: nil)
        
        
        alertController.addAction(cancelAction)
        present(alertController,animated:true)
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainDelegate.readDataFromDatabase()

    }
}
