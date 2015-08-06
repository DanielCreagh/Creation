//
//  DetailViewController.swift
//  reCreation
//
//  Created by Daniel Creagh on 18/07/2015.
//  Copyright © 2015 Creagh Creations. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

  @IBOutlet weak var webView: UIWebView!

  var detailItem: MainMenuItem?
  
  override func viewWillAppear(animated: Bool) {
    
    if let page = detailItem, url = page.UrlForResource {
      webView.loadRequest(NSURLRequest(URL: url))
      title = page.rawValue
    }
  }
}
