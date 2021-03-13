//
//  ViewController.swift
//  ShoppingList
//
//  Created by Luiz Antônio da Silva Júnior on 23/02/21.
//

import UIKit

protocol HomeViewProtocol: class {
    
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var sectionTableView: UITableView!
    
    var presenter: HomePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionTableView.delegate = self
        sectionTableView.dataSource = self
    }
}

extension HomeViewController : UITableViewDataSource, UITableViewDelegate  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = presenter.getSection(index: indexPath.row)
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = section.name
        
        return cell
    }
}

extension HomeViewController: HomeViewProtocol {
    
}
