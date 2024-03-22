//
//  SDKViewController.swift
//  SDKSampleUIKit
//
//  Created by Aleksandr Khorobrykh on 22/03/2024.
//

import UIKit
import SaootiSDK
import SwiftUI

class SDKViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // You can set org id here or anywhere in your app controller before UI init
        Saooti.setOrganisationId("<organization_id>")
        
        SaootiUI.bind()

        let hostingController = UIHostingController(
            rootView: SaootiUI.PodcastsHubView(
                navbarConfig: SaootiUI.Podcasts.NavbarConfig(onCloseButtonClick: { [weak self] in
                    self?.dismiss(animated: true)
                })
            )
        )
        
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)

        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
