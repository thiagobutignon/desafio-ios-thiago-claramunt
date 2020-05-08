//
//  SceneDelegate.swift
//  Main
//
//  Created by Thiago B Claramunt on 08/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = CharacterFactory.makeController()
        window?.makeKeyAndVisible()
    }
}

