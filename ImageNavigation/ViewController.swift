//
//  ViewController.swift
//  ImageNavigation
//
//  Created by Kyle Lei on 2021/8/21.
//

import UIKit

extension UIColor {
    static var tenet: UIColor {
           return UIColor(red: 178/255, green: 198/255, blue: 205/255, alpha: 1.0)
    }
    static var dunkirk: UIColor {
           return UIColor(red: 188/255, green: 205/255, blue: 197/255, alpha: 1.0)
    }
    static var interstellar: UIColor {
           return UIColor(red: 252/255, green: 243/255, blue: 225/255, alpha: 1.0)
    }
    static var darkknightrises: UIColor {
           return UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1.0)
    }
    static var inception: UIColor {
           return UIColor(red: 207/255, green: 217/255, blue: 218/255, alpha: 1.0)
    }
}

class ViewController: UIViewController {

    let color = [ UIColor.tenet, UIColor.dunkirk, UIColor.interstellar, UIColor.darkknightrises, UIColor.inception]
    let cover = ["tenet", "dunkirk", "interstellar", "darkknightrises", "inception"]
    let movieTitle = ["天能", "敦克爾克大行動", "星際穿越", "黑暗騎士 黎明升起", "全面啟動"]
    let year = ["2020", "2017", "2014", "2012", "2010"]
    let moviedescription = ["世界存亡危在旦夕，天能一詞是唯一的線索與武器。主人公穿梭於全球各地，開展特工活動，力求揭示“信條”之謎，並完成一項超越了真實時間的神秘任務。這項任務並非時間之旅，而是時空逆轉．．．", "故事改編自著名的二戰軍事事件“敦刻爾克大撤退”。二戰初期，40萬英法盟軍被敵軍圍困於敦刻爾克的海灘之上，面對敵軍步步逼近的絕境，形勢萬分危急．．．", "近未來的地球黃沙遍野，小麥、秋葵等基礎農作物相繼因枯萎病滅絕，人類不再像從前那樣仰望星空，放縱想像力和靈感的迸發，而是每日在沙塵暴的肆虐下倒數著所剩不多的光景．．．", "背景設定於上部《黑暗騎士》的八年後，新敵人班恩的無情虛假革命迫使隱居的布魯斯·韋恩復出成為蝙蝠俠，並從核危機之中拯救高譚市．．．", "唐姆柯比是一名技術高超的神偷，不過他偷竊的目標物絕對涉及最危險、最神秘的範疇，他專門趁目標對象呈睡眠狀態之際，也就是人類心智最脆弱時，深入其潛意識偷取寶貴的秘密．．．"]
    
    var index = 0

    @IBOutlet var movieCover: UIImageView! {
        didSet {
            movieCover.layer.cornerRadius = 40
            movieCover.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
            movieCover.clipsToBounds = true
        }
    }
    @IBOutlet var yearLable: UILabel!
    @IBOutlet var titleLable: UILabel!
    @IBOutlet var descriptionLable: UITextView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoChange()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.87)
    }
    
    func infoChange() {
        movieCover.image = UIImage(named: cover[index])
        yearLable.text = year[index]
        titleLable.text = movieTitle[index]
        descriptionLable.text = moviedescription[index]
        pageControl.currentPage = index
        pageControl.currentPageIndicatorTintColor = color[index]
        pageControl.pageIndicatorTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.38)
        
        yearLable.textColor = color[index]
        titleLable.textColor = color[index]
        descriptionLable.textColor = color[index]
        
    }
    
    @IBAction func next(_ sender: Any) {
        if index == cover.count-1 {
            index = 0
        }else{
            index += 1
        }
        infoChange()
    }
    
    @IBAction func previous(_ sender: Any) {
        if index == 0 {
            index = cover.count-1
        }else{
            index -= 1
        }
        infoChange()
    }
}

