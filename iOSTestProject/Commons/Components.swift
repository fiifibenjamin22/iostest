//
//  Components.swift
//  iOSTestProject
//
//  Created by Benjamin Acquah on 8/12/21.
//

import UIKit

class SegmentedController: UISegmentedControl {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 20
    }
}

class Components {
    
    func textLabel(content: String, font: CGFloat, color: UIColor) -> UILabel {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = color
        lbl.font = UIFont.systemFont(ofSize: font)
        lbl.text = content
        return lbl
    }
    
    func imageContainer(content: String) -> UIImageView {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: content)
        img.contentMode = .scaleAspectFit
        return img
    }
    
    func buttonWithImage(image: String) -> UIButton {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: image), for: .normal)
        return btn
    }
    
    func segmentController(tabs: [String]) -> UISegmentedControl {
        let actions = tabs
        let sc = SegmentedController(items: actions)
        sc.selectedSegmentIndex = 1
        sc.setWidth(100, forSegmentAt: 0)
        sc.setWidth(100, forSegmentAt: 2)
        sc.apportionsSegmentWidthsByContent = true
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }
    
    func commonView(color: UIColor) -> UIView {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = color
        return v
    }
    
    func commonStackView(contents: [UIView]) -> UIStackView {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 0.0
        stack.alignment = .center
        stack.tintColor = .black
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        contents.forEach { stack.addArrangedSubview($0) }
        return stack
    }
    
    func readLocalJSONFile(forName name: String) -> Data? {
        do {
            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
    
    func parse(jsonData: Data, completion: @escaping (Course) -> ()) {
        do {
            print(jsonData)
            let decodedData = try JSONDecoder().decode(Course.self, from: jsonData)
            print(decodedData)
            completion(decodedData)
        } catch let jsonError as NSError {
            print("json error: \(jsonError.localizedDescription)")
        }
    }
}
