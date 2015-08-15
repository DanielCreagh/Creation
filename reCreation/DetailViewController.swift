//
//  DetailViewController.swift
//  reCreation
//
//  Created by Daniel Creagh on 18/07/2015.
//  Copyright © 2015 Creagh Creations. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIWebViewDelegate {

  @IBOutlet weak var webView: UIWebView!

  var detailItem: MainMenuItem?
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    webView.delegate = self
    webView.backgroundColor = UIColor(patternImage: UIImage(named: "ricepaper")!)
    webView.scrollView.alwaysBounceVertical = false
  }
  
  override func viewWillAppear(animated: Bool) {
    
    if detailItem == nil {
      detailItem = MainMenuItem.allMenuItems[0]
    }
    webView.loadRequest(NSURLRequest(URL: detailItem!.UrlForResource!))
    title = detailItem!.rawValue
  }
  
  // MARK: UIWebViewDelegate Methods
  
  func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
    if navigationType == .LinkClicked {
      UIApplication.sharedApplication().openURL(request.URL!)
      return false
    }
    return true
  }
}
