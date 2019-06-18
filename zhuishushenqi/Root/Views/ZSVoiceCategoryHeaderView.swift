//
//  QSCatalogPresenter.swift
//  zhuishushenqi
//
//  Created caonongyun on 2017/4/21.
//  Copyright © 2017年 QS. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

class ZSVoiceCategoryHeaderView: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubviews() {
        imageView = UIImageView(frame: CGRect.zero)
        contentView.addSubview(imageView)
        
        titleLabel = UILabel(frame: CGRect.zero)
        titleLabel.textColor = UIColor.black
        titleLabel.textAlignment = .left
        titleLabel.font = UIFont.systemFont(ofSize: 17)
        contentView.addSubview(titleLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        guard let image = imageView.image else {
            titleLabel.frame = CGRect(x: 20, y: 0, width: bounds.width, height: bounds.height)
            return
        }
        imageView.frame = CGRect(x: 20, y: bounds.height/2 - image.size.height/2, width: image.size.width, height: image.size.height)
        titleLabel.frame = CGRect(x: imageView.frame.maxX + 10, y: 0, width: bounds.width, height: bounds.height)

    }
    
    var imageView:UIImageView!
    var titleLabel:UILabel!
}