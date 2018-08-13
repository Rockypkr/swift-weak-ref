//
//  Copyright © 2018 Essential Developer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		if let vc = window?.rootViewController as? WeatherViewController {
			let presenter = WeatherDataPresenter(output: vc)
			let useCase = FetchWeatherUseCase(output: presenter)
			vc.reloadData = useCase.fetch
		}
		
		return true
	}
}
