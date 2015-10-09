//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Geoffrey Dudgeon on 10/8/15.
//  Copyright © 2015 Geoff Dudgeon. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    // MARK: - MODEL
    var store: PhotoStore!
    
    
    // MARK: - VIEW
    @IBOutlet var imageView: UIImageView!
    
    
    // MARK: - CONTROLLER
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchRecentPhotos()
    }
    

}
