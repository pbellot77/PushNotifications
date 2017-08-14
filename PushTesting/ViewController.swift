//
//  ViewController.swift
//  PushTesting
//
//  Created by Patrick Bellot on 8/13/17.
//  Copyright © 2017 Polestar Interactive LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let url = URL(string: "https://fcm.googleapis.com/fcm/send")!
    var request = URLRequest(url: url)
    
    request.allHTTPHeaderFields = ["Authorization": "key=AAAAGeE7L9U:APA91bH_PJekJxuML7v-Mk4Vspjjo5E0Yi1d7hSYMCcptE6sgLPgzsJRBA8gIKmcgInoRnFclqz2KVQUSNcUqJgXll0PdXOShs64WzQZSJA7Kjd3u4iHb1byg9ytDo7aJWOjYr64yY5i", "Content-Type": "application/json"]
    request.httpMethod = "POST"
    request.httpBody = "{\"to\":\"dwsqKpv7xEw:APA91bH-Yw60cGMYvdPpAwVlsztuYsnZu6KWQ4PKecgpXuzbq6fqwIy48rroqWdTJjZ9gKdPwALh39zCAFel0J8icNAwtJn3xKGSvxtAsL2z86h0BO4DpKT-frcWhfzKc7qsg99TzUJn\",\"notification\":{\"body\":{\"dogName\":\"Fido\"}}}".data(using: .utf8)
    
    URLSession.shared.downloadTask(with: request) { (data, response, error) in
      print(error)
    }.resume()
  }



}

