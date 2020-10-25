//
//  Demo1ViewController.swift
//  Demo
//
//  Created by hanwe on 2020/10/25.
//

import UIKit
import HWNavigationView

class Demo1ViewController: UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet weak var navigationView: HWNavigationView!
    @IBOutlet weak var myTitleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: property
    
    //MARK: lifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        navigationView.addEffect(object: myTitleLabel, effets: [.moveHorizonalDirection(from: .left(offset: 10), to: .center(offset: 0)),.labelFontSizeIncrease(minFontSize: 20, maxFontSize: 25)])
        navigationView.showEffetOffset = 200
    }
    
    //MARK: function
    
    //MARK: action

}

extension Demo1ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension Demo1ViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.navigationView.scrollViewDidScroll(scrollView)
    }
}
