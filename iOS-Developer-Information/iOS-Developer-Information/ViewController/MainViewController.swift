//
//  MainViewController.swift
//  iOS-Developer-Information
//
//  Created by Hyunwoo Jang on 2022/04/24.
//

import UIKit


/// 메인 화면
class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}



extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "IntroLabelTableViewCell", for: indexPath) as! IntroLabelTableViewCell
            
            return cell
            
        case 1:
            return UITableViewCell()
            
        default:
            fatalError()
        }
    }
}
