//
//  ViewController.swift
//  SDKSampleUIKit
//
//  Created by Aleksandr Khorobrykh on 22/03/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let showPodcastsButton = UIButton()
        showPodcastsButton.setTitle("Show Podcasts", for: .normal)
        showPodcastsButton.setTitleColor(.systemBlue, for: .normal)
        showPodcastsButton.addTarget(self, action: #selector(showPodcasts), for: .touchUpInside)
        view.addSubview(showPodcastsButton)
        
        showPodcastsButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            showPodcastsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showPodcastsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func showPodcasts() {
        let sdkViewController = SDKViewController()
        present(sdkViewController, animated: true)
    }
}
