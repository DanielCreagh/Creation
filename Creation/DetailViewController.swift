//
//  DetailViewController.swift
//  Creation
//
//  Created by Daniel Creagh on 15/04/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController, WKNavigationDelegate {

  @IBOutlet weak var detailDescriptionLabel: UILabel!
  @IBOutlet weak var webViewContainer: UIView!
  var webView: WKWebView!
  
  var pageToLoad = "http://www.b3ta.com/"

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
//            self.configureView()
        }
    }

//  func configureView() {
//        if let detail: AnyObject = self.detailItem {
//            self.title = detail.description
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.description
//            }
//        }
//    }

  override func loadView() {

  }
  
  override func viewDidLoad() {
    
//    self.webView = WKWebView()
//    self.view = self.webView
//    self.webView.navigationDelegate = self
//    self.webView.backgroundColor = UIColor.greenColor()

    
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
//    self.configureView()

//    let url = NSBundle.mainBundle().URLForResource("contact", withExtension: "html")
//    let req = NSURLRequest(URL:url!)
//    self.webView!.loadRequest(req)
    
    
//    webView.delegate = self
//    webView.sizeThatFits(CGSizeZero)
//    
//    [[NSBundle mainBundle] URLForResource:@"my" withExtension:@"html"];
//    let url = NSBundle.URLsForResourcesWithExtension("html", subdirectory: <#T##String?#>, inBundleWithURL: <#T##NSURL#>)
    let url = NSBundle.mainBundle().URLForResource("contact", withExtension: "html")
//    webView.loadRequest(NSURLRequest(URL: NSURL(string: pageToLoad)!))
    webView.loadRequest(NSURLRequest(URL: url!))
//
//    println(NSURL(string: pageToLoad))
//    
//      UINavigationBar.appearance().translucent = false
//      UINavigationBar.appearance().barTintColor = col_BG_DARK_BLUE
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    

    
    //    [[NSBundle mainBundle] URLForResource:@"my" withExtension:@"html"];
//    let url = NSBundle.mainBundle().URLForResource("contact", withExtension: "html")
//    webView.loadRequest(NSURLRequest(URL: NSURL(string: pageToLoad)!))
//    
//    webView.sizeThatFits(CGSizeZero)
    //    webView.loadRequest(NSURLRequest(URL: url!))
    
//    webView.reload()
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
      
//      let dataModel = DataModel.sharedInstance
//      print(dataModel.workExperience[0].end, appendNewline: false)
    }
  
//  //MARK: WebViewDelegate methods
//  func webViewDidFinishLoad(theWebView: UIWebView) {
//    let contentSize = theWebView.scrollView.contentSize
//    let viewSize = self.view.bounds.size;
//    
//    var rw = viewSize.width / contentSize.width
//    
//    theWebView.scrollView.minimumZoomScale = rw
//    theWebView.scrollView.maximumZoomScale = rw
//    theWebView.scrollView.zoomScale = rw
//  }
  
  override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
    
    if UIDevice.currentDevice().orientation.isLandscape.boolValue {
      print("landscape", terminator: "")
    } else {
      print("portraight", terminator: "")
    }
  }
  
  override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
    
//    webView.sizeToFit()
//    webView.reload()
    
//    let url = NSBundle.mainBundle().URLForResource("contact", withExtension: "html")
//    webView.loadRequest(NSURLRequest(URL: url!))
//    webView.sizeToFit()
    
  }
  func webView(webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void) {

    
//    if let frame = navigationAction.targetFrame {
//
//    } else {
//      decisionHandler(.Cancel)
//      
//      UIApplication.sharedApplication().openURL(navigationAction.request.URL!)
//      
//      return
//    }
//    
//    decisionHandler(.Allow)
  }
}



