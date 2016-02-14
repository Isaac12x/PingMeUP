//
//  SecondViewController.swift
//  PingMeUp
//
//  Created by Isaac Albets Ramonet on 13/02/16.
//  Copyright © 2016 shippo. All rights reserved.
//

import UIKit

class AddInterest: UITableViewController{
    
    // MARK: - Variables
    @IBOutlet weak var tableD: UITableView!
    var isSumarized = [Summary]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "addInterest")
        
        //isSumarized = self.fetchData()
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isSumarized.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIdentifier = "SummaryCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! AddInterestViewCell
        
        cell.cellTitle?.text = "\(isSumarized)"
        
        cell.cellSubtitle?.text = "\(isSumarized)"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let controller = self.storyboard!.instantiateViewControllerWithIdentifier("DisplayParsedResults") as! DisplayParsedResults
        
    }
    
    
    func fetchData(){
        return
    }
    
}