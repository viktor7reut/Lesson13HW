//
//  TaskTwoVC.swift
//  Lesson13HW
//
//  Created by Виктор Реут on 17.03.24.
//

import UIKit

class TaskTwoVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let languages: [String] = [
        "Swift",
        "Java",
        "JavaScript",
        "Python",
        "C#",
        "PHP",
        "Kotlin",
        "C++",
        "Go",
        "TypeScript"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(LanguagesCell.self)", for: indexPath) as! LanguagesCell
        
        cell.leftLabel.text = "\(indexPath.row + 1)"
        cell.rightLabel.text = "\(languages[indexPath.row])"
        
        return cell
    }
    
}

extension TaskTwoVC {
    func setupTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
