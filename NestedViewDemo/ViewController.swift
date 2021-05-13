//
//  ViewController.swift
//  NestedViewDemo
//
//  Created by vivek shrivastwa on 13/05/21.
//

import UIKit

class ViewController: UIViewController {

    private var mainView:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private var weekSubscriptionView:UIButton = {
        let view = UIButton()
        view.backgroundColor = .systemGray6
        view.layer.borderColor = UIColor.systemGray4.cgColor
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
        view.layer.borderWidth = 4.0
        return view
    }()
    
    private var monthSubscriptionView:UIButton = {
        let view = UIButton()
        view.backgroundColor = .systemGray6
        view.layer.borderColor = UIColor.systemGray4.cgColor
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
        view.layer.borderWidth = 4.0
        return view
    }()
    
    private var yearSubscriptionView:UIButton = {
        let view = UIButton()
        view.backgroundColor = .systemGray6
        view.layer.borderColor = UIColor.systemGray4.cgColor
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
        view.layer.borderWidth = 4.0
        return view
    }()
    
    
    private var headingLabel:UILabel = {
       let label = UILabel()
        label.text = "and no ads!"
        label.textColor = .systemGray
        label.font = UIFont(name: "verdana", size: 20)
        return label
    }()
    
    private var weekSubscriptionLabel:UILabel = {
       let label = UILabel()
        label.text = "   1 Week Subscription \n \n$3.99/Week"
        label.textColor = .systemGray
        label.font = UIFont(name: "verdana", size: 18)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 5
        return label
    }()
    
    private var monthSubscriptionLabel:UILabel = {
       let label = UILabel()
        label.text = "   1 Month Subscription \n \n$8.99/Week"
        label.textColor = .systemGray
        label.font = UIFont(name: "verdana", size: 18)
        label.lineBreakMode = .byWordWrapping
        label.layer.borderColor = UIColor.green.cgColor
        label.numberOfLines = 5
        return label
    }()
    
    private var yearSubscriptionLabel:UILabel = {
       let label = UILabel()
        label.text = "   12 Month Subscription \n \n$49.99/Week"
        label.textColor = .systemGray
        label.font = UIFont(name: "verdana", size: 18)
        label.lineBreakMode = .byWordWrapping
        label.layer.borderColor = UIColor.green.cgColor
        label.numberOfLines = 5
        return label
    }()
    
    private var circleView1:UIView  = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius =  30
        view.isHidden = true
        return view
    }()
    
    private var offerLabel1:UILabel = {
       let label = UILabel()
        label.text = "70% Off"
        label.textColor = .red
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 5
        label.isHidden = true
        return label
    }()
    
    private var circleView2:UIView  = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius =  30
        view.isHidden = true
        view.isHidden = true
        return view
    }()
    
    private var offerLabel2:UILabel = {
       let label = UILabel()
        label.text = "70% Off"
        label.textColor = .red
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 5
        label.isHidden = true
        return label
    }()
    
    private var circleView3:UIView  = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius =  30
        view.isHidden = true
        return view
    }()
    
    private var offerLabel3:UILabel = {
       let label = UILabel()
        label.text = "70% Off"
        label.textColor = .red
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 5
        label.isHidden = true
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        
        weekSubscriptionView.addTarget(self, action: #selector(changeWeekBorder), for: .touchUpInside)
        monthSubscriptionView.addTarget(self, action: #selector(changeMonthBorder), for: .touchUpInside)
        yearSubscriptionView.addTarget(self, action: #selector(changeYearBorder), for: .touchUpInside)
    }
    
    @objc func changeWeekBorder(){
        weekSubscriptionView.layer.borderColor = UIColor.orange.cgColor
        monthSubscriptionView.layer.borderColor = UIColor.systemGray4.cgColor
        yearSubscriptionView.layer.borderColor = UIColor.systemGray4.cgColor
        
        circleView1.isHidden = false
        circleView2.isHidden = true
        circleView3.isHidden = true
        
        offerLabel1.isHidden = false
        offerLabel2.isHidden = true
        offerLabel3.isHidden = true
        
    }
    
    @objc func changeMonthBorder(){
        weekSubscriptionView.layer.borderColor = UIColor.systemGray4.cgColor
        monthSubscriptionView.layer.borderColor = UIColor.orange.cgColor
        yearSubscriptionView.layer.borderColor = UIColor.systemGray4.cgColor
        
        circleView1.isHidden = true
        circleView2.isHidden = false
        circleView3.isHidden = true
        
        offerLabel1.isHidden = true
        offerLabel2.isHidden = false
        offerLabel3.isHidden = true
    }
    
    @objc func changeYearBorder(){
        weekSubscriptionView.layer.borderColor = UIColor.systemGray4.cgColor
        monthSubscriptionView.layer.borderColor = UIColor.systemGray4.cgColor
        yearSubscriptionView.layer.borderColor = UIColor.orange.cgColor
        
        circleView1.isHidden = true
        circleView2.isHidden = true
        circleView3.isHidden = false
        
        offerLabel1.isHidden = true
        offerLabel2.isHidden = true
        offerLabel3.isHidden = false
    }
    
    

    private func addSubViews(){
        view.addSubview(mainView)
        
        mainView.addSubview(weekSubscriptionView)
        mainView.addSubview(monthSubscriptionView)
        mainView.addSubview(yearSubscriptionView)
        mainView.addSubview(headingLabel)
        
       // weekSubscriptionView.addSubview(monthSubscriptionLabel)
        mainView.addSubview(monthSubscriptionLabel)
        weekSubscriptionView.addSubview(weekSubscriptionLabel)
        mainView.addSubview(yearSubscriptionLabel)
        
        //circle view
        mainView.addSubview(circleView1)
        mainView.addSubview(offerLabel1)
        
        mainView.addSubview(circleView2)
        mainView.addSubview(offerLabel2)

        mainView.addSubview(circleView3)
        mainView.addSubview(offerLabel3)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //view frame
        mainView.frame = CGRect(x: view.left,
                                y: view.top + 100,
                                width: view.width ,
                                height: 240)
        
        weekSubscriptionView.frame = CGRect(x: mainView.left + 10,
                                y: 70,
                                width: mainView.width / 3 - 12,
                                height:mainView.height - 80)
        
        monthSubscriptionView.frame = CGRect(x: weekSubscriptionView.right + 8,
                                y: 70,
                                width: mainView.width / 3 - 12,
                                height:mainView.height - 80)
        
        yearSubscriptionView.frame = CGRect(x: monthSubscriptionView.right + 8,
                                y: 70,
                                width: mainView.width / 3 - 12,
                                height:mainView.height - 80)
        
        //heading frame
        headingLabel.frame = CGRect(x: mainView.left + 150,
                                    y: 10,
                                    width: 200,
                                    height: 30)
        
        //label frame
        weekSubscriptionLabel.frame = CGRect(x: weekSubscriptionView.left + 3,
                                    y: 10,
                                    width: weekSubscriptionView.width - 6,
                                    height: weekSubscriptionView.height - 20)
        
        monthSubscriptionLabel.frame = CGRect(x: monthSubscriptionView.left + 12,
                                    y: 80,
                                    width: monthSubscriptionView.width - 6,
                                    height: monthSubscriptionView.height - 20)
        
        yearSubscriptionLabel.frame = CGRect(x: yearSubscriptionView.left + 6,
                                    y: 80,
                                    width: yearSubscriptionView.width - 6,
                                    height: yearSubscriptionView.height - 20)
        
        //offer view
        circleView1.frame = CGRect(x: weekSubscriptionView.right - 40,
                                   y: weekSubscriptionView.bottom - 40,
                                  width: 60,
                                  height: 60)
        circleView2.frame = CGRect(x: monthSubscriptionView.right - 40,
                                   y: monthSubscriptionView.bottom - 40,
                                  width: 60,
                                  height: 60)
        circleView3.frame = CGRect(x: yearSubscriptionView.right - 40,
                                   y: yearSubscriptionView.bottom - 40,
                                  width: 60,
                                  height: 60)
        //circle
        offerLabel1.frame = CGRect(x: circleView1.left + 15,
                                  y: circleView1.top + 5,
                                  width: 50,
                                  height: 50)
        offerLabel2.frame = CGRect(x: circleView2.left + 15,
                                  y: circleView2.top + 5,
                                  width: 50,
                                  height: 50)
        offerLabel3.frame = CGRect(x: circleView3.left + 15,
                                  y: circleView3.top + 5,
                                  width: 50,
                                  height: 50)
    }

}

