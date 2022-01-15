//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Hamit Seyrek on 15.01.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    //variables
    var simpsonArray = [Simpson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Simpsons Book"
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let homer = Simpson(name: "Homer Simpson", job: "Nuclear Safety", image: UIImage(named: "homer")!)
        let marge = Simpson(name: "Marge Simpson", job: "Housewife", image: UIImage(named: "marge")!)
        let bart = Simpson(name: "Bart Simpson", job: "Student", image: UIImage(named: "bart")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisa")!)
        let maggie = Simpson(name: "Maggie Simpson", job: "Baby", image: UIImage(named: "maggie")!)
        
        simpsonArray = [homer,marge,bart,lisa,maggie]
    }
    
    // required functions for usage TableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        simpsonArray.count
    }


}

