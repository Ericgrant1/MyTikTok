//
//  PostViewController.swift
//  MyTikTok
//
//  Created by Eric Grant on 11.08.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    private let model: PostModel
    
    init(model: PostModel) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
