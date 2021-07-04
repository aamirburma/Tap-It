//
//  ViewController.swift
//  tap-it
//
//  Created by Aamir Burma on 03/07/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    var timeleft = 30
    var score = 0
    var name:String = ""
    private var timer = Timer()
    
    /** Create First Grid View*/
    private let myView1:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 80, width: 100, height: 100)
        return view
    }()
    
    /** Create Second Grid View*/
    private let myView2:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 80, width: 100, height: 100)
        return view
    }()
    
    /** Create Third Grid View*/
    private let myView3:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 245, y: 80, width: 100, height: 100)
        return view
    }()
    
    /** Create Forth Grid View*/
    private let myView4:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 190, width: 100, height: 100)
        return view
    }()
        
    /** Create Fifth Grid View*/
    private let myView5:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 190, width: 100, height: 100)
        return view
    }()
        
    /** Create Sixth Grid View*/
    private let myView6:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 245, y: 190, width: 100, height: 100)
        return view
    }()
    
    /** Create Seventh Grid View*/
    private let myView7:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 300, width: 100, height: 100)
        return view
    }()
    
    /** Create Eighth Grid View*/
    private let myView8:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 300, width: 100, height: 100)
        return view
    }()
    
    /** Create Ninth Grid View*/
    private let myView9:UIView = {
        let view = UIView()
        view.layer.borderWidth = 4
        view.layer.shadowColor = UIColor.red.cgColor
        view.layer.borderColor =  UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
        view.frame = CGRect(x: 245, y: 300, width: 100, height: 100)
        return view
    }()
    
    /** Here all Grid view Represnt 3X3 boxes grid structure for Tap-it game*/
    
    /** Label is use to define time monitoring*/
    private let timerlabel : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.frame = CGRect(x: 130, y: 430, width: 80, height: 50)
        return label
    }()
    
    /** Display image clock*/
    private let MyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "clock")
        imageView.frame = CGRect(x: 170, y: 430, width: 40, height: 40)
        return imageView
    }()
    
    /** This Label is use to "score" sentence*/
    private let score_lbl : UILabel = {
        let score = UILabel()
        score.text = "Score:  "
        score.textColor = .black
        score.textAlignment = .center
        score.shadowColor = .darkGray
        score.font = .boldSystemFont(ofSize: 20)
        score.frame = CGRect(x: 125, y: 470, width: 80, height: 50)
        return score
    }()
    
    /** This Label is use to display current score of the user*/
    @objc private let Score : UILabel = {
        let sc = UILabel()
        sc.text = "0"
        sc.textColor = .black
        sc.textAlignment = .center
        sc.shadowColor = .darkGray
        sc.font = .boldSystemFont(ofSize: 20)
        sc.frame = CGRect(x: 180, y: 470, width: 80, height: 50)
        return sc
    }()
    
    /** Button for Start the game*/
    private let stop : UIButton = {
        let strt = UIButton()
        strt.setTitle("Start", for: .normal)
        strt.addTarget(self, action: #selector(starttimer), for: .touchUpInside)
        strt.backgroundColor = .gray
        strt.setTitleColor(.white, for: .normal)
        strt.layer.cornerRadius = 25
       strt.frame = CGRect(x: 130, y: 520, width: 120, height: 60)
        return strt
    }()
    
    /** Function for start timer*/
    @objc private func starttimer()
    {
        stop.isHidden = true
        score_lbl.isHidden = false
        Score.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Timerstart),userInfo: .none, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("run")
        title = "Tap it"
        self.view.backgroundColor = UIColorFromRGB(rgbValue: 0xf6c193)
        view.addSubview(myView1)
        view.addSubview(myView2)
        view.addSubview(myView3)
        view.addSubview(myView4)
        view.addSubview(myView5)
        view.addSubview(myView6)
        view.addSubview(myView7)
        view.addSubview(myView8)
        view.addSubview(myView9)
        view.addSubview(timerlabel)
        view.addSubview(MyImageView)
        view.addSubview(score_lbl)
        view.addSubview(Score)
        view.addSubview(stop)
        
        let alert = UIAlertController(title: "Rules", message: "Tap On Highlighted Box To Earn +10 Point, If tap On Wrong Box Then lose -5 Point, Tap Within Given Time, Click Start To Begin", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(didtapgrid1))
        tapgesture.numberOfTapsRequired = 1
        tapgesture.numberOfTouchesRequired = 1
        
        let tapgesture2 = UITapGestureRecognizer(target: self, action: #selector(didtapmyView2))
        tapgesture2.numberOfTapsRequired = 1
        tapgesture2.numberOfTouchesRequired = 1
        
        let tapgesture3 = UITapGestureRecognizer(target: self, action: #selector(didtapmyView3))
        tapgesture3.numberOfTapsRequired = 1
        tapgesture3.numberOfTouchesRequired = 1
        
        let tapgesture4 = UITapGestureRecognizer(target: self, action: #selector(didtapmyView4))
        tapgesture4.numberOfTapsRequired = 1
        tapgesture4.numberOfTouchesRequired = 1
        
        let tapgesture5 = UITapGestureRecognizer(target: self, action: #selector(didtapmyView5))
        tapgesture5.numberOfTapsRequired = 1
        tapgesture5.numberOfTouchesRequired = 1
        
        let tapgesture6 = UITapGestureRecognizer(target: self, action: #selector(didtapmyView6))
        tapgesture6.numberOfTapsRequired = 1
        tapgesture6.numberOfTouchesRequired = 1
        
        let tapgesture7 = UITapGestureRecognizer(target: self, action: #selector(didtapmyView7))
        tapgesture7.numberOfTapsRequired = 1
        tapgesture7.numberOfTouchesRequired = 1
        
        let tapgesture8 = UITapGestureRecognizer(target: self, action: #selector(didtapmyView8))
        tapgesture8.numberOfTapsRequired = 1
        tapgesture8.numberOfTouchesRequired = 1
        
        let tapgesture9 = UITapGestureRecognizer(target: self, action: #selector(didtapmyView9))
        tapgesture9.numberOfTapsRequired = 1
        tapgesture9.numberOfTouchesRequired = 1
        
        
        myView1	.addGestureRecognizer(tapgesture)
        myView2.addGestureRecognizer(tapgesture2)
        myView3.addGestureRecognizer(tapgesture3)
        myView4.addGestureRecognizer(tapgesture4)
        myView5.addGestureRecognizer(tapgesture5)
        myView6.addGestureRecognizer(tapgesture6)
        myView7.addGestureRecognizer(tapgesture7)
        myView8.addGestureRecognizer(tapgesture8)
        myView9.addGestureRecognizer(tapgesture9)
        
    }
}
extension ViewController{
    
@objc private func didtapgrid1(_ gesture:UITapGestureRecognizer, _ sender:UIView){
    print("Tapped at Location : \(gesture.location(in: sender))")
    if(self.myView1.backgroundColor!.isEqual(UIColor.green))
    {
        self.score += 10
        Score.text = String(score)
    }
    else{
        self.score -= 5
        Score.text = String(score)
    }
}
    
    
    @objc private func didtapmyView2(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.myView2.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapmyView3(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.myView3.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    @objc private func didtapmyView4(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.myView4.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapmyView5(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.myView5.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapmyView6(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.myView6.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapmyView7(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.myView7.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapmyView8(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.myView8.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapmyView9(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.myView9.backgroundColor!.isEqual(UIColor.green))
        {
            //print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    
    
    
    @objc private func Timerstart(){
        self.timeleft -= 1
        self.timerlabel.text = String(self.timeleft)
        let randomInt = Int.random(in: 1..<10)
        if( randomInt == 1)
        {
            myView1.backgroundColor = .green
            myView2.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
            
        }
        else if(randomInt == 2)
        {
            myView2.backgroundColor = .green
            myView1.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
        }
        else if(randomInt == 3)
        {
            myView3.backgroundColor = .green
            myView2.backgroundColor = UIColor.yellow
            myView1.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
        }
        else if(randomInt == 4)
        {
            myView4.backgroundColor = .green
            myView2.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView1.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
        }
        else if(randomInt == 5)
        {
            myView5.backgroundColor = .green
            myView2.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView1.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
        }
        else if(randomInt == 6)
        {
            myView6.backgroundColor = .green
            myView2.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView1.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
        }
        else if(randomInt == 7)
        {
            myView7.backgroundColor = .green
            myView2.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView1.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
        }
        else if(randomInt == 8)
        {
            myView8.backgroundColor = .green
            myView2.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView1.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
        }
        else if(randomInt == 9)
        {
            myView9.backgroundColor = .green
            myView2.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView1.backgroundColor = UIColor.yellow
        }
        
        if(self.timeleft==0){
            timer.invalidate()
            myView1.backgroundColor = UIColor.yellow
            myView2.backgroundColor = UIColor.yellow
            myView3.backgroundColor = UIColor.yellow
            myView4.backgroundColor = UIColor.yellow
            myView5.backgroundColor = UIColor.yellow
            myView6.backgroundColor = UIColor.yellow
            myView7.backgroundColor = UIColor.yellow
            myView8.backgroundColor = UIColor.yellow
            myView9.backgroundColor = UIColor.yellow
        }
    }
}
