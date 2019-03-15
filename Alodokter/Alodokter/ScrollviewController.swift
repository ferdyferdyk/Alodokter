//
//  ScrollviewController.swift
//  Alodokter
//
//  Created by HiFerdyK on 14/03/19.
//  Copyright © 2019 HiFerdyK. All rights reserved.
//

import Foundation
import UIKit

class ScrollviewController: UIViewController {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScrollView.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "syrup3"), #imageLiteral(resourceName: "tablets2"), #imageLiteral(resourceName: "capsules"), #imageLiteral(resourceName: "tablet3")]
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i * 1)
            mainScrollView.addSubview(imageView)
        }
        
        
    }
}
