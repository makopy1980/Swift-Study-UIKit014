//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private Methods
    
    /// Viewの設定
    private func setupView() {
        // ImageViewの設定
        self.setupImageViews()
    }
    
    /// ImageViewの設定
    private func setupImageViews() {
        let image = UIImage(named: "logo")
        let imageViewSize = CGSize(width: 300.0,
                                   height: 100.0)
        let imageViewX = (self.view.bounds.width - imageViewSize.width) / 2
        
        // ----------------------------
        // 画像を縮小(0.5倍)
        // ----------------------------
        let scaleDownViewPoint = CGPoint(x: imageViewX,
                                         y: 50.0)
        
        let scaleDownView = UIImageView(frame: CGRect(origin: scaleDownViewPoint,
                                                      size: imageViewSize))
        
        scaleDownView.image = image
        
        // 縮小用のアフィン行列を生成する
        scaleDownView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        self.view.addSubview(scaleDownView)
        
        // ----------------------------
        // 画像を拡大(1.2倍)
        // ----------------------------
        let scaleUpViewPoint = CGPoint(x: imageViewX,
                                       y: 150.0)
        
        let scaleUpView = UIImageView(frame: CGRect(origin: scaleUpViewPoint,
                                                    size: imageViewSize))
        
        scaleUpView.image = image
        
        // 拡大用のアフィン行列を生成する
        scaleUpView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        
        self.view.addSubview(scaleUpView)
        
        // ----------------------------
        // 画像を回転
        // ----------------------------
        let rotateViewPoint = CGPoint(x: imageViewX,
                                      y: 350.0)
        
        let rotateView = UIImageView(frame: CGRect(origin: rotateViewPoint,
                                                   size: imageViewSize))
        
        rotateView.image = image
        
        // radianで回転角度を指定(30°)
        let angle = CGFloat((30.0 * Double.pi) / 180.0)
        
        // 回転用のアフィン行列を生成する
        rotateView.transform = CGAffineTransform(rotationAngle: angle)
        
        self.view.addSubview(rotateView)
        
        // ----------------------------
        // 画像を反転
        // ----------------------------
        let reverseViewPoint = CGPoint(x: imageViewX,
                                       y: 550)
        
        let reverseView = UIImageView(frame: CGRect(origin: reverseViewPoint,
                                                    size: imageViewSize))
        
        reverseView.image = image
        
        // 反転設定
        reverseView.transform = reverseView.transform.scaledBy(x: -1.0, y: 1.0)
        
        self.view.addSubview(reverseView)
    }
}

