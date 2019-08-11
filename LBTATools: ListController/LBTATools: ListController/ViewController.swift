//
//  ViewController.swift
//  LBTATools: ListController
//
//  Created by Vibhor Gupta on 5/26/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//
import LBTATools
import UIKit

struct Match {
    let imageName , userName : String
}

class MatchCell: LBTAListCell<Match> {
    let imageView = CircularImageView(width: 70, image: UIImage(named: "one"))
    let nameLabel = UILabel(text: "User name", font: .boldSystemFont(ofSize: 14))

    override var item: Match!{
        didSet{
            imageView.image  = UIImage(named: item.imageName)
            nameLabel.text = item.userName

            stack(imageView,
                  nameLabel,
                  spacing:4,
                  alignment: .center)
        }
    }
}

class MatchesController: LBTAListController<MatchCell , Match>  , UICollectionViewDelegateFlowLayout{
    override func viewDidLoad() {
        super.viewDidLoad()

        items = [
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif"),
          .init(imageName: "one", userName: "Katrina Kaif")

        ]
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 100, height: view.frame.height)
    }
}

class Header: UICollectionReusableView {

    let newMatchesLabel = UILabel(text: "New Matches", font: .boldSystemFont(ofSize: 14), textColor: #colorLiteral(red: 0.982283175, green: 0.3893752992, blue: 0.4144355059, alpha: 1))
    let matchesController = MatchesController(scrollDirection: .horizontal)
    let messagesLabel = UILabel(text: " Matches", font: .boldSystemFont(ofSize: 14), textColor: #colorLiteral(red: 0.982283175, green: 0.3893752992, blue: 0.4144355059, alpha: 1))

    override init(frame: CGRect) {
        super.init(frame: frame)

        stack(hstack(newMatchesLabel).padLeft(16),
              matchesController.view,
             hstack(messagesLabel).padLeft(16),
              spacing: 12).padTop(16)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//for only list view
//class MessagesController: LBTAListController<MessageCell, Message> ,  UICollectionViewDelegateFlowLayout {

//story view
class MessagesController: LBTAListHeaderController<MessageCell , Message , Header >
 ,  UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 200  )
    }

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
        navigationItem.title = "Messages"
        items = [
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother"),
            .init(userProfileImageName: "one", username: "Katrina Kaif", text: "hello brother")


        ]
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return .init(width: view.frame.width, height: 100)
    }
}



