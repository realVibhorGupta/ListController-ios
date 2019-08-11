//
//  File.swift
//  LBTATools: ListController
//
//  Created by Vibhor Gupta on 5/26/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//
import LBTATools
import UIKit

class MessageCell: LBTAListCell<Message> {

    let imageView = UIImageView(backgroundColor: .gray)
    let nameLabel = UILabel(text: "User name", font: .boldSystemFont(ofSize: 17) )
    let messageLabel = UILabel(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, wh", font: .systemFont(ofSize: 14), textColor: .gray)
    override var item: Message!{
        didSet{

            nameLabel.text = item.username
            messageLabel.text = item.text
            imageView.image = UIImage(named: item.userProfileImageName)
        }
    }
    override func setupViews() {
        super.setupViews()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 64 / 2
        hstack(imageView.withWidth(64).withHeight(64)
            ,stack(nameLabel,messageLabel , spacing : 4)
            ,spacing : 8
            ,alignment: .center).withMargins(.allSides(16))
        addSeparatorView(leadingAnchor: nameLabel.leadingAnchor)
    }
}


