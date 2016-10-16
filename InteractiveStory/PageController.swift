//
//  PageController.swift
//  InteractiveStory
//
//  Created by Mohammad Abu Nabhan on 16/10/16.
//  Copyright © 2016 Mohammad Abu Nabhan. All rights reserved.
//

import UIKit

class PageController: UIViewController {
    
    var page: Page?
    
    let artwork = UIImageView()
    let storyLabel = UILabel()
    let firstChoiceButton = UIButton(type: .system)
    let secondChoiceButton = UIButton(type: .system)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(page: Page) {
        self.page = page
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let page = page {
            artwork.image = page.story.artWork
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        view.addSubview(artwork)
        artwork.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            artwork.topAnchor.constraint(equalTo: view.topAnchor),
            artwork.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            artwork.rightAnchor.constraint(equalTo: view.rightAnchor),
            artwork.leftAnchor.constraint(equalTo: view.leftAnchor)
            ])
        
    }

}
