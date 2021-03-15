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
    
    var titleLabel: UILabel!
    var sectionTableView: UITableView!
    var presenter: HomePresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        
        setupTitleLabel()
        setupSectionTableView()
        setupConstraint()
    }
    
    private func setupTitleLabel() {
        titleLabel = UILabel(frame: .zero)
        titleLabel.text = "Hello, Luiz!"
        titleLabel.textColor = .white
        titleLabel.font = .boldSystemFont(ofSize: 22)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleLabel)
    }
    
    private func setupConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20 ),
            
            sectionTableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            sectionTableView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
            sectionTableView.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
            sectionTableView.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor, constant: -20)
        ])
    }
}

extension HomeViewController : UITableViewDataSource, UITableViewDelegate  {
    
    private func setupSectionTableView() {
        sectionTableView = UITableView(frame: .zero, style: .plain)
        sectionTableView.translatesAutoresizingMaskIntoConstraints = false
        sectionTableView.delegate = self
        sectionTableView.dataSource = self
        
        view.addSubview(sectionTableView)
    }
    
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
