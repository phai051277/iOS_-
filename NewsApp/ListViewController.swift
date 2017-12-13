//
//  ListViewController.swift
//  NewsApp
//
//  Created by 小池基文 on 2017/12/12.
//  Copyright © 2017年 小池基文. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    private let news = ["記事１", "記事２", "記事３"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = news[indexPath.row]
        return cell
    }
}
