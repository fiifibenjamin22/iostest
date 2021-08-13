//
//  ViewController.swift
//  iOSTestProject
//
//  Created by Benjamin Acquah on 8/12/21.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let mainView = Components().commonView(color: .white)
    let playerView = Components().commonView(color: UIColor.black.withAlphaComponent(0.7))
    let switchIcon = Components().imageContainer(content: "arrows")
    let customController = Components().segmentController(tabs: ["Playing", "Questions", "Library"])
    let menuIcon = Components().imageContainer(content: "menu")
    let play = Components().buttonWithImage(image: "play")
    let back = Components().buttonWithImage(image: "back")
    let nextIcon = Components().buttonWithImage(image: "next")
    let bookmark = Components().buttonWithImage(image: "bookmark")
    let hdtv = Components().buttonWithImage(image: "hdtv")
    let fullscreen = Components().buttonWithImage(image: "fullscreen")
    let className = Components().textLabel(content: "SHS 1 Gen. Arts(Econs.) Class", font: 16, color: .black)
    let locationIcon = Components().imageContainer(content: "location")
    let schoolLocation = Components().textLabel(content: "Accra High School", font: 12, color: .lightGray)
    let viewsIcon = Components().imageContainer(content: "user")
    let viewsLabel = Components().textLabel(content: "Views", font: 12, color: .lightGray)
    let floatingBtn = Components().buttonWithImage(image: "book")
    lazy var controlsView = Components().commonStackView(contents: [self.play,
                                                               self.back,
                                                               self.nextIcon,
                                                               self.bookmark,
                                                               self.hdtv,
                                                               self.fullscreen])
    
    var videos: [Video]?
    var courseArray = [Course]()
    let selectedUrl: String = ""
    var player: AVPlayer?
    
    func fetchVideos() {
        ApiService.shared.fetchVideos { (videos: [Video]) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        //self.fetchVideos()
        self.fetchCourses()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return courseArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CommonStrings.mainCellId(), for: indexPath) as! MainViewCell
        cell.course = courseArray[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 60.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = self.courseArray[indexPath.item]
        playContent(url: item.lesson_video)
    }

    func playContent(url: String) {
        player?.pause()
        guard let videoUrl = URL(string: url) else { return }
        player = AVPlayer(url: videoUrl)
        playerView.backgroundColor = .white
        
        print(videoUrl)
        let playerLayer = AVPlayerLayer(player: player)
        self.playerView.layer.addSublayer(playerLayer)
        playerLayer.frame = CGRect(x: 0, y: -70, width: self.view.frame.width, height: (self.view.frame.height / 2) - 0)
        player?.play()
        
    }
}

