//
//  ViewController.swift
//  PhotoViewer
//
//  Created by 이윤수 on 2021/02/20.
//

import UIKit

class ViewController: UIViewController {
  var img1: UIImage?
  var numImage: Int = 1
  let maxImage: Int = 3


  @IBOutlet var imgViewer: UIImageView!
  @IBOutlet var btnPrev: UIButton!
  @IBOutlet var btnNex: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    img1 = UIImage(named: "1.jpg")


    imgViewer.image = img1
  }
  @IBAction func btnPrevious(_ sender: UIButton) {
    numImage = numImage - 1
    if (numImage == 1) {
      btnPrev.setTitle("마지막", for: .normal)
    } else{
      btnPrev.setTitle("이전", for: .normal)
      btnNex.setTitle("다음", for: .normal)
    }
    if (numImage < 1) {
      numImage = maxImage
    }
    let imgPhoto = String(numImage) + ".jpg"
    imgViewer.image = UIImage(named: imgPhoto)

  }

  @IBAction func btnNext(_ sender: UIButton) {
    numImage = numImage + 1
    if (numImage == maxImage) {
      btnNex.setTitle("처음", for: .normal)
    } else {
      btnNex.setTitle("다음", for: .normal)
      btnPrev.setTitle("이전", for: .normal)
    }
    if (numImage > maxImage) {
      numImage = 1
    }
    let imgPhoto = String(numImage) + ".jpg"
    imgViewer.image = UIImage(named: imgPhoto)

  }

}

