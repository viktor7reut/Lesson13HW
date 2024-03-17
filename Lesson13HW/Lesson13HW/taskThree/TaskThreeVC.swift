//
//  TaskThreeVC.swift
//  Lesson13HW
//
//  Created by Виктор Реут on 17.03.24.
//

import UIKit

class TaskThreeVC: UIViewController {
    
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
}

extension TaskThreeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "\(FirstPtototypeCell.self)", for: indexPath) as? FirstPtototypeCell
            cell?.indexLabel.text = "Index: \(indexPath.row)"
            cell?.sectionLabel.text = "Section: \(indexPath.section)"
            
            return cell ?? UITableViewCell()
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "\(SecondPtototypeCell.self)", for: indexPath) as? SecondPtototypeCell
            cell?.languageLabel.text = languages[indexPath.row - 10]
            
            return cell ?? UITableViewCell()
        }
    }
}

extension TaskThreeVC {
    func setupTable() {
        tableView.dataSource = self
    }
}
