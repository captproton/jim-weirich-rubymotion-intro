class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.backgroundColor = UIColor.grayColor
    @window.rootViewController = HomeViewController.alloc.init
    @window.makeKeyAndVisible
    
    true
  end
end
