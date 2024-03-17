//
//  TaskOneVC.swift
//  Lesson13HW
//
//  Created by Виктор Реут on 17.03.24.
//

import UIKit

class TaskOneVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Секция: \(indexPath.section), Ячейка: \(indexPath.row)"
        
        
        return cell
    }
}


extension TaskOneVC {
    func setupTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
