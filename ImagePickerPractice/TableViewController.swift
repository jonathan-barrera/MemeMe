//
//  TableViewController.swift
//  ImagePickerPractice
//
//  Created by Jonathan Barrera on 11/16/18.
//  Copyright © 2018 Jonathan Barrera. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var memes: [Meme]!
    private let reuseIdentifier = "tableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.memes = appDelegate.memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.memes = appDelegate.memes
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! TableViewCell
        let currentMeme = memes[indexPath.row]
        
        cell.memeImageView.image = currentMeme.memedImage
        cell.memeTextLabel.text = currentMeme.topText + " " + currentMeme.bottomText
        
        return cell
    }

}
