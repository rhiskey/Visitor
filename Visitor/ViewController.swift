//
//  ViewController.swift
//  Visitor
//
//  Created by Владимир Киселев on 02.02.2022.
//

import UIKit

class FirstCell: UITableViewCell{}
class SecondCell: UITableViewCell{}
class ThirdCell: UITableViewCell{}


class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func registerCell(){
        tableView.register(FirstCell.self, forCellReuseIdentifier: "FirstCell")
        tableView.register(SecondCell.self, forCellReuseIdentifier: "SecondCell")
        tableView.register(ThirdCell.self, forCellReuseIdentifier: "ThirdCell")
    }

}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /**/ return FirstCell()
        /**/ return SecondCell()
        /**/ return ThirdCell()
    }
    
}

extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)->
    CGFloat{
        let cell = tableView.cellForRow(at: indexPath) as! HeightResultVisitable
        return cell.accept(HeightResultVisitor())
    }
}
