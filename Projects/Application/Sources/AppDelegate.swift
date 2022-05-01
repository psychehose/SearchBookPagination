import UIKit
import CoreKit
import FeatureRoot
import RIBs

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
  ) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.backgroundColor = .white
    self.window = window
    
    
    let launchRouter = FeatureRootBuilder(dependency: AppComponent()).build()
    self.launchRouter = launchRouter
    launchRouter.launch(from: window)
    return true
  }
  
  private var launchRouter: LaunchRouting?
  
}
