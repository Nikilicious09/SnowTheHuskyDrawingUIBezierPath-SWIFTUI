//
//  ContentView.swift
//  SnowTheHusky
//
//  Created by Nikil Vinod on 07/06/21.
//

import SwiftUI

struct ScaledBezier: Shape {
    let bezierPath: UIBezierPath

    func path(in rect: CGRect) -> Path {
        let path = Path(bezierPath.cgPath)

        // Figure out how much bigger we need to make our path in order for it to fill the available space without clipping.
        let multiplier = min(rect.width, rect.height)

        // Create an affine transform that uses the multiplier for both dimensions equally.
        print("multiplier : \(multiplier) ")
        let transform = CGAffineTransform(scaleX: multiplier*1.2, y: multiplier*1.2)

        // Apply that scale and send back the result.
        return path.applying(transform)
    }
}

struct ContentView: View {
    var body: some View {

        /*
         Capsule
         Circle
         ContainerRelativeShape
         Ellipse
         OffsetShape
         Path
         Rectangle
         RotatedShape
         RoundedRectangle
         ScaledShape
         TransformedShape
         */
        ScaledBezier(bezierPath: .snowboosface)
            .stroke(lineWidth: 1)
            .frame(width: 400, height: 450)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIBezierPath {
    
    // Scale Refs
    /*
    (0,0)           (0.5,0)             (1,0)
                    
     
     
    (0,0.5)         (0.5,0.5)           (1,0.5)
     
     
                    
    (0,1)           (0.5,1)             (1,1)
    */
    
    
    static var snowboosface: UIBezierPath {
        
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 0, y: 0))
        
        path.addLine(to: CGPoint(x:0, y: 0))
        path.addLine(to: CGPoint(x:0, y:1))
        //
        
        path.addLine(to: CGPoint(x: 1, y: 1))
        path.addLine(to: CGPoint(x: 1, y: 0))
        
        path.addLine(to: CGPoint(x:0, y: 0))
        
        
        path.move(to: CGPoint(x: 0.4, y: 0.2))
        
        path.addLine(to: CGPoint(x: 0.4, y: 0.2))
        
        path.addLine(to: CGPoint(x: 0.4, y: 0.8))
        
        
        path.addLine(to: CGPoint(x: 0.8, y: 0.7))
        
        path.addLine(to: CGPoint(x: 0.8, y: 0.6))
        
        path.addLine(to: CGPoint(x: 0.4, y: 0.5))
        
        
        path.addLine(to: CGPoint(x: 0.8, y: 0.4))
        
        path.addLine(to: CGPoint(x: 0.8, y: 0.3))

        path.addLine(to: CGPoint(x: 0.4, y: 0.2))

        
        
        /*
        
        path.move(to: CGPoint(x: 0.5, y: 0.25))
        path.addLine(to: CGPoint(x: 0.2, y: 0))
        
        path.move(to: CGPoint(x: 0.2, y: 0))
        path.addLine(to: CGPoint(x: 0.18, y: 0.35))
        
        path.move(to: CGPoint(x: 0.18, y: 0.35))
        path.addLine(to: CGPoint(x: 0.33, y: 0.3))
        
        path.move(to: CGPoint(x: 0.2, y: 0))
        path.addLine(to: CGPoint(x: 0.33, y: 0.3))
        
        path.move(to: CGPoint(x: 0.18, y: 0.35))
        
        path.addLine(to: CGPoint(x: 0.1, y: 0.39))
        
        path.addLine(to: CGPoint(x: 0.03, y: 0.5))
        path.addLine(to: CGPoint(x: 0.15, y: 0.5))
        path.addLine(to: CGPoint(x: 0.08, y: 0.6))
        
        path.addLine(to: CGPoint(x: 0.2, y: 0.6))
        path.addLine(to: CGPoint(x: 0.35, y: 0.9))
        
        path.addLine(to: CGPoint(x: 0.5, y: 1))
        path.addLine(to: CGPoint(x: 0.5, y: 0.9))
        path.addLine(to: CGPoint(x: 0.45, y: 0.85))
        path.addLine(to: CGPoint(x: 0.5, y: 0.85))
        
        
        // Eyes
        
        path.move(to: CGPoint(x: 0.45, y: 0.5))
        path.addCurve(to: CGPoint(x: 0.35, y: 0.45), controlPoint1: CGPoint(x: 0.35, y: 0.35), controlPoint2: CGPoint(x: 0.4, y: 0.35))
        path.addLine(to: CGPoint(x: 0.45, y: 0.5))
        
        
        // Mirroring
        path.apply(CGAffineTransform(translationX: 0.5, y: 0))
        
        path.apply(CGAffineTransform(scaleX: -1, y: 1))
        
        path.apply(CGAffineTransform(translationX: 1, y: 0))
            
        path.apply(CGAffineTransform(translationX: 0.5, y: 0))
        
        // Symmetry
        
        path.move(to: CGPoint(x: 0.5, y: 0.25))
        path.addLine(to: CGPoint(x: 0.2, y: 0))
        
        path.move(to: CGPoint(x: 0.2, y: 0))
        path.addLine(to: CGPoint(x: 0.18, y: 0.35))
        
        path.move(to: CGPoint(x: 0.18, y: 0.35))
        path.addLine(to: CGPoint(x: 0.33, y: 0.3))
        
        path.move(to: CGPoint(x: 0.2, y: 0))
        path.addLine(to: CGPoint(x: 0.33, y: 0.3))
        
        path.move(to: CGPoint(x: 0.18, y: 0.35))
        
        path.addLine(to: CGPoint(x: 0.1, y: 0.39))
        
        path.addLine(to: CGPoint(x: 0.03, y: 0.5))
        path.addLine(to: CGPoint(x: 0.15, y: 0.5))
        path.addLine(to: CGPoint(x: 0.08, y: 0.6))
        
        path.addLine(to: CGPoint(x: 0.2, y: 0.6))
        path.addLine(to: CGPoint(x: 0.35, y: 0.9))
        
        path.addLine(to: CGPoint(x: 0.5, y: 1))
        path.addLine(to: CGPoint(x: 0.5, y: 0.9))
        path.addLine(to: CGPoint(x: 0.45, y: 0.85))
        path.addLine(to: CGPoint(x: 0.5, y: 0.85))
        
        
        // Eyes
        
        path.move(to: CGPoint(x: 0.45, y: 0.5))
        path.addCurve(to: CGPoint(x: 0.35, y: 0.45), controlPoint1: CGPoint(x: 0.35, y: 0.35), controlPoint2: CGPoint(x: 0.4, y: 0.35))
        path.addLine(to: CGPoint(x: 0.45, y: 0.5))
        
 
 */
        return path
        
    }
    
    
}
