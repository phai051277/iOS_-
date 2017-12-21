//
//  DetailViewController.swift
//  NewsApp
//
//  Created by 小池基文 on 2017/12/19.
//  Copyright © 2017年 小池基文. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController,WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    var link:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Delegateの設定
        webView.navigationDelegate = self
        // 表示するWEBサイトのURLの設定
        // URLインスタンスを作成しURLの妥当性をチェック
        if let url = URL(string: self.link) {
            // URLRequestインスタンスを作成しダウンロードの保存方法の定義(キャッシュ利用)
            let urlRequest = URLRequest(url: url)
            // webViewで表示するWEBサイトの読み込み
            webView.load(urlRequest)
        }
    }
}
