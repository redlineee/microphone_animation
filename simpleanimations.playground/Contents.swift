//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
XCPShowView(identifier: "Container View", view: containerView)

let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0

let startingColor = UIColor(red: (225.0/255.0), green: (0.0/255.0), blue: (0.0/255.0), alpha: 0.01)
circle.backgroundColor = startingColor

containerView.addSubview(circle);

let rectangle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
rectangle.alpha = 0.33
rectangle.center = containerView.center
rectangle.layer.cornerRadius = 50.0
rectangle.backgroundColor = UIColor.purple

containerView.addSubview(rectangle)

let rectangle2 = UIView(frame: CGRect(x: 50.0, y: 0.0, width: 50.0, height: 100.0))
rectangle2.alpha = 0.66
rectangle2.center = containerView.center
rectangle2.layer.cornerRadius = 25.0
rectangle2.backgroundColor = UIColor.cyan
containerView.addSubview(rectangle2)

UIView.animate(withDuration: 2.0, animations: { () -> Void in
    let endingColor = UIColor(red: (0.0/255.0), green: (50.0/255.0), blue: (150.0/255.0), alpha: 1.0)
    circle.backgroundColor = endingColor
    
    let scaleTransform = CGAffineTransform(scaleX: 5.0, y: 5.0)
    
    circle.transform = scaleTransform
    
    let rotationTransform = CGAffineTransform(rotationAngle: 3.14)
    
    rectangle.transform = scaleTransform
    rectangle.transform = rotationTransform
    
    rectangle2.transform = scaleTransform
    rectangle2.transform = rotationTransform
})
