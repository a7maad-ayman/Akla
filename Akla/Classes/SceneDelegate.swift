import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()

    }

    // MARK: - Function to create the root tabBar
    func createTabBar() -> UITabBarController {

        let tabBar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        UITabBar.appearance().backgroundColor = .systemGray6

        let homeNC = createNavigationController(viewController: HomeViewController(), title: "Home", tabBarItem: UITabBarItem(title: "Home", image: UIImage(systemName: "homekit"), tag: 0))
        tabBar.viewControllers = [homeNC]

        return tabBar
    }

    // MARK: - Function to Embed in NavigationController in a ViewController
    func createNavigationController(viewController: UIViewController, title: String, tabBarItem: UITabBarItem) -> UINavigationController {
        let navigationController = viewController
        navigationController.title = title
        navigationController.tabBarItem = tabBarItem

        return UINavigationController(rootViewController: navigationController)

    }
}
