//
//  ViewController.swift
//  HeaderView
//
//  Created by Xinhao Liang on 10/11/19.
//  Copyright © 2019 Xinhao Liang. All rights reserved.
//

import UIKit

struct Room {
    var roomName: String
    var timeSpent: String
    var duration: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var headerView: UIView!
    
    let roomArr: [Room] = [
        Room(roomName: "Linear Accelerator 1", timeSpent: "1.95 mins", duration: "01:30 PM - 01:32 PM"),
        Room(roomName: "CT Simulator", timeSpent: "4.72 mins", duration: "01:25 PM - 01:30 PM"),
        Room(roomName: "Waiting Room", timeSpent: "1.67 mins", duration: "01:24 PM - 01:25 PM"),
    ]
        
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.layer.cornerRadius = 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return roomArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let room = roomArr[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTableViewCell", for: indexPath) as? RoomTableViewCell {
            cell.roomName.text = room.roomName
            cell.timeSpent.text = room.timeSpent
            cell.timeDuration.text = room.duration
            
            return cell
        }
        return UITableViewCell()
    }
    
}

