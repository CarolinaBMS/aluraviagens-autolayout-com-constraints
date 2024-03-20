//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Carolina Bortoli M.S on 12/03/24.
//

import UIKit

class HomeTableViewHeader: UIView {

    // MARK: - IBOutlets
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func configuraView() {
        headerView.backgroundColor = UIColor(red: 30.0/255, green: 59.0/255, blue: 119.0/255, alpha: 1.0)
    }
}
