//
//  SignInHeaderView.swift
//  InstagramClone
//
//  Created by Ozgun Dogus on 3.04.2024.
//

import UIKit

class SignInHeaderView: UIView {
    
    private let imageView : UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "text_logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var gradientLayer : CAGradientLayer?

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        createGradient()
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemBlue.cgColor, UIColor.systemPink.cgColor]
        layer.addSublayer(gradientLayer)
        self.gradientLayer = gradientLayer // we need to keep a reference to this layer otherwise it will be deallocated , we can't use it
        //global değişken olduğu için self ile çağırmamız gerekiyor.
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer?.frame = layer.bounds
        imageView.frame = CGRect(x: width/4, y: 20, width: width/2, height: height-40)
    }
}
