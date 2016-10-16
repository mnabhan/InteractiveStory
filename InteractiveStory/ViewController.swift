//
//  ViewController.swift
//  InteractiveStory
//
//  Created by Mohammad Abu Nabhan on 10/15/16.
//  Copyright © 2016 Mohammad Abu Nabhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startAdventure" {
            if let pageController = segue.destination as? PageController {
                pageController.page = Adventure.story
            }
        }
    }
}
