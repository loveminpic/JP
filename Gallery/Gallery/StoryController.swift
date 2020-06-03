//
//  StoryController.swift
//  Gallery
//
//  Created by CY on 2020/05/14.
//  Copyright © 2020 CY. All rights reserved.
//

import UIKit

class StoryController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 4 // 이미지의 파일명을 저장할 배열의 최대 크기를 지정
    let PICKER_VIEW_COLUMN = 1 // 피커 뷰의 열의 갯수 지정
    let PICKER_VIEW_HEIGHT:CGFloat = 80 // 피커 뷰의 높이를 지정할 상수
    var imageArray = [UIImage?]()
    var images = [ "test.jpeg", "test2.jpeg" , "test3.jpeg", "test4.jpeg" ]
    
    //main images
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var Main_Images: UIImageView!
    @IBOutlet weak var Text_View: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // i 값을 0에서 MAX_ARRAY_NUM보다 작을 때까지 반복
        for i in 0 ..< MAX_ARRAY_NUM {
            // 각 파일 명에 해당하는 이미지를 생성
            let image = UIImage(named: images[i])
            // 생성된 이미지를 imageArray에 추가
            imageArray.append(image)
        }
        // 뷰가 로드되었을 때 첫번째 이미지 출력
        Main_Images.image = imageArray[0]
        
    }
    
    // 피커 뷰의 컴포넌트 수 설정
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return PICKER_VIEW_COLUMN
        }
        
        // 피커 뷰의 높이 설정
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return PICKER_VIEW_HEIGHT
        }
        
        // 피커 뷰의 개수 설정
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return images.count
        }
        // 피커 뷰의 각 Row의 타이틀 설정
    //    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    //        return imageFileName[row]
    //    }
        
        // 피커 뷰의 각 Row의 view 설정
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
            let imageView = UIImageView(image: imageArray[row])
            imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 80) // 이미지 뷰의 프레임 크기 설정
            
            return imageView
        }
        
        // 피커 뷰가 선택되었을 때 실행
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            Main_Images.image = imageArray[row]
        }
    
}
