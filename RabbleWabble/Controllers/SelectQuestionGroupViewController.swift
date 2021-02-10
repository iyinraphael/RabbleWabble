//
//  SelectQuestionGroupViewController.swift
//  RabbleWabble
//
//  Created by Iyin Raphael on 2/10/21.
//

import UIKit

class SelectQuestionGroupViewController: UIViewController {
    
    // MARK:  - Outlets
    @IBOutlet internal var tableView: UITableView! {
        didSet {
            tableView.tableFooterView = UIView()
        }
    }
    
    // MARK: - Properties
    public let questionGroups = QuestionGroup.allGroups()
    private var selectedQuestionGroup: QuestionGroup!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

// MARK: - UITableViewDataSource
extension SelectQuestionGroupViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int)
    -> Int {
        return questionGroups.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionGroupCell") as! QuestionGroupCell
      let questionGroup = questionGroups[indexPath.row]
      cell.titleLabel.text = questionGroup.title
      return cell
    }
}
