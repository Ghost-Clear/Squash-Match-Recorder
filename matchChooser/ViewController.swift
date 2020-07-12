//
//  ViewController.swift
//  matchChooser
//
//  Created by Varun Chitturi on 7/9/20.
//  Copyright © 2020 Squash Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var stringToMake1 : [String]! = []
	var stringToMake2 : [String]! = []
	var isPlayer1 = true
	@IBOutlet weak var currentPlayerLabel: UILabel!
	@IBOutlet weak var stringToMakeLabel2: UILabel!
	@IBOutlet weak var stringToMakeLabel1: UILabel!
	@IBOutlet weak var player1PointLabel: UILabel!
	@IBOutlet weak var player2PointLabel: UILabel!
	var player1Point = 0
	var player2Point = 0
	@IBAction func switchPlayers(_ sender: Any) {
		isPlayer1 = !isPlayer1
		if isPlayer1{
			currentPlayerLabel.text = "current player : player 1"
		}
		else{
			currentPlayerLabel.text = "current player : player 2"
		}
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		stringToMakeLabel2.lineBreakMode = .byTruncatingHead
		stringToMakeLabel1.lineBreakMode = .byTruncatingHead
	}
	@IBAction func playLet(_ sender: Any) {
		stringToMake2.append("let")
		stringToMake1.append("let")
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
	}
	@IBAction func FL(_ sender: Any) {
		if isPlayer1{
			stringToMake1.append("FL")
		}
		else{
			stringToMake2.append("FL")
		}
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		isPlayer1 = !isPlayer1
		if isPlayer1{
			currentPlayerLabel.text = "current player : player 1"
		}
		else{
			currentPlayerLabel.text = "current player : player 2"
		}
	}
	@IBAction func FR(_ sender: Any) {
		if isPlayer1{
			stringToMake1.append("FR")
		}
		else{
			stringToMake2.append("FR")
		}
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		isPlayer1 = !isPlayer1
		if isPlayer1{
			currentPlayerLabel.text = "current player : player 1"
		}
		else{
			currentPlayerLabel.text = "current player : player 2"
		}
	}
	@IBAction func CL(_ sender: Any) {
		if isPlayer1{
			stringToMake1.append("CL")
		}
		else{
			stringToMake2.append("CL")
		}
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		isPlayer1 = !isPlayer1
		if isPlayer1{
			currentPlayerLabel.text = "current player : player 1"
		}
		else{
			currentPlayerLabel.text = "current player : player 2"
		}
	}
	@IBAction func CR(_ sender: Any) {
		if isPlayer1{
			stringToMake1.append("CR")
		}
		else{
			stringToMake2.append("CR")
		}
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		isPlayer1 = !isPlayer1
		if isPlayer1{
			currentPlayerLabel.text = "current player : player 1"
		}
		else{
			currentPlayerLabel.text = "current player : player 2"
		}
	}
	@IBAction func LL(_ sender: Any) {
		if isPlayer1{
			stringToMake1.append("LL")
		}
		else{
			stringToMake2.append("LL")
		}
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		isPlayer1 = !isPlayer1
		if isPlayer1{
			currentPlayerLabel.text = "current player : player 1"
		}
		else{
			currentPlayerLabel.text = "current player : player 2"
		}
	}
	@IBAction func LR(_ sender: Any) {
		if isPlayer1{
			stringToMake1.append("LR")
		}
		else{
			stringToMake2.append("LR")
		}
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		isPlayer1 = !isPlayer1
		if isPlayer1{
			currentPlayerLabel.text = "current player : player 1"
		}
		else{
			currentPlayerLabel.text = "current player : player 2"
		}
	}
	@IBAction func deleteLast(_ sender: Any) {
		isPlayer1 = !isPlayer1
		if isPlayer1{
			if stringToMake1.popLast() == "1"{
				player1Point -= 1
				player1PointLabel.text = String(player1Point)
			}
		}
		else{
			if stringToMake2.popLast() == "1"{
				player2Point -= 1
				player2PointLabel.text = String(player2Point)
			}
		}
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		if isPlayer1{
			currentPlayerLabel.text = "current player : player 1"
		}
		else{
			currentPlayerLabel.text = "current player : player 2"
		}
	}
	@IBAction func pointToPlayer2(_ sender: Any) {
		stringToMake1.append("0")
		stringToMake2.append("1")
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		isPlayer1 = false
		currentPlayerLabel.text = "current player : player 2"
		player2Point += 1
		player2PointLabel.text = String(player2Point)
	}
	@IBAction func pointToPlayer1(_ sender: Any) {
		stringToMake1.append("1")
		stringToMake2.append("0")
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		isPlayer1 = true
		currentPlayerLabel.text = "current player : player 1"
		player1Point += 1
		player1PointLabel.text = String(player1Point)
	}
	@IBAction func finish(_ sender: Any) {
		print(stringToMake1!)
		print(stringToMake2!)
		stringToMake1 = []
		stringToMake2 = []
		stringToMakeLabel1.text = stringToMake1.description
		stringToMakeLabel2.text = stringToMake2.description
		player1Point = 0
		player2Point = 0
		player1PointLabel.text = "0"
		player2PointLabel.text = "0"
	}
}

