
# RKPagerTabBar

## Usage

```swift

import UIKit
import RKPagerTabBarSwift

class ViewController: ButtonBarPagerTabStripViewController {
    
    var collectionView = ButtonBarView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    var scrollView = UIScrollView()
    
    override func loadView() {
        super.loadView()
        setup()
    }
    
    private func setup() {
        // MARK: -Connect to parent controller properties
        containerView = scrollView
        buttonBarView = collectionView
        
        // MARK: -Add views & set constraints
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: collectionView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        [
            TestViewController(),
            TestViewController()
        ]
    }
}

// MARK: -Conform to IndicatorInfoProvider for children view controllers
class TestViewController: UIViewController, IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: "TestTitle")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}



```


