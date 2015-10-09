//
//  PhotoStore.swift
//  Photorama
//
//  Created by Geoffrey Dudgeon on 10/8/15.
//  Copyright © 2015 Geoff Dudgeon. All rights reserved.
//

import Foundation

class PhotoStore {
    
    let session: NSURLSession = {
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        return NSURLSession(configuration: config)
    }()

    func fetchRecentPhotos() {

        let url = FlickrAPI.recentPhotosURL()
        let request = NSURLRequest(URL: url)
        let task = session.dataTaskWithRequest(request, completionHandler: {
            
            (data, response, error) -> Void in
            
            // success!
            if let jsonData = data {
                if let jsonString = NSString(data: jsonData, encoding: NSUTF8StringEncoding) {
                    print("\(jsonString)")
                }
            }
            
            // error!
            else if let requestError = error {
                print("Error fetching recent photos: \(requestError)")
            } else {
                print("Unexpected error with the request")
            }
        
        })
        
        task.resume() // resume == start, in this case
    }
    
    
    
}