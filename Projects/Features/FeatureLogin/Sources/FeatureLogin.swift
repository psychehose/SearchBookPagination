import UIKit
import FeatureBase
import FlexLayout
import SnapKit

final public class TestLoginViewController: UIViewController {
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
       return button
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
}

extension TestLoginViewController {
    private func makeUI() {
        view.addSubview(button)
        
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(20)
            make.leading.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(20)
            make.trailing.equalToSuperview().inset(20)
        }
    }
}
