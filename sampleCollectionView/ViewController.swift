//
//  ViewController.swift
//  sampleCollectionView
//
//  Created by Eriko Ichinohe on 2018/01/30.
//  Copyright © 2018年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    //表示する個数の設定
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // cellオブジェクトの作成
        let cell:CustomCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        
        // 各プロパティに値を設定
        cell.myLabel.text = "タイトル"
        cell.myImage.image = UIImage(named: "sample.png")
        
        // 背景色の設定
        cell.backgroundColor = UIColor.white
        
        // 作成したcellオブジェクトを戻り値として返す
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

