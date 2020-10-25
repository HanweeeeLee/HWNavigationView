//
//  Demo2ViewController.swift
//  Demo
//
//  Created by hanwe on 2020/10/25.
//

import UIKit
import HWNavigationView

class Demo2ViewController: UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet weak var navigationView: HWNavigationView!
    @IBOutlet weak var myTitleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    
    //MARK: property
    
    //MARK: lifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        navigationView.showEffetOffset = 200
        navigationView.addEffect(object: myTitleLabel, effets: [.replaceConstant(leading: nil, trailling: nil, top: HWNavigationView.HWNavigationFromTo(from:0,to: -30), bottom: nil),.fadeOut(minAlpha: 0, maxAlpha: 1)])
        navigationView.addNavigationResizableHeight(from: 40, to: 60)
        navigationView.addEffect(object: self.imageView, effets: [.fadeIn(minAlpha: 0, maxAlpha: 1),.replaceConstant(leading: HWNavigationView.HWNavigationFromTo(from: 30, to: 10), trailling: nil, top: HWNavigationView.HWNavigationFromTo(from: 0, to: 15), bottom: nil),.viewSizeIncrease(minWidth: 20, maxWidth: 30, minHeight: 20, maxHeight: 30)])
        
    }
    
    //MARK: function
    
    //MARK: action

}

extension Demo2ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension Demo2ViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.navigationView.scrollViewDidScroll(scrollView)
    }
}
