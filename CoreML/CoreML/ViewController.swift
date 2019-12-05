//
//  ViewController.swift
//  CoreML
//
//  Created by Rizki Syaputra on 05/12/19.
//  Copyright © 2019 Udacoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imgGambar: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCamera(_ sender: Any) {
        if !UIImagePickerController.isSourceTypeAvailable(.camera){
            return
        }
        
        let cameraPicker = UIImagePickerController()
        cameraPicker.delegate = self
        cameraPicker.sourceType = .camera
        cameraPicker.allowsEditing = false
        present(cameraPicker, animated: true, completion: nil)
    }
    
    @IBAction func btnLibrary(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = false
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
}

extension ViewController : UIImagePickerControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

