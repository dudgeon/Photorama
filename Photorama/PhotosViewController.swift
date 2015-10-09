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
        
        store.fetchRecentPhotos() {
            (photosResult) -> Void in
            
            switch photosResult {
            case let .Success(photos):
                print("Successfully found \(photos.count) recent photos.")
            case let .Failure(error):
                print("Error fetching recent photos: \(error)")
            }
        }
    }
    

}
