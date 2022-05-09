//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas



/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point


// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

// Draw a square

turtle.setPenColor(to: .black)
turtle.setPenSize(to: 1)
turtle.goToHome()
turtle.currentPosition()
turtle.currentHeading()
extension Float {
    func toDegrees() -> Degrees {
        return Degrees(self * 180.0 / Float.pi)
    }
}


let angle = atan(10.0/20.0).toDegrees()
let length = sqrt(100+400)
let secangle = (180-angle-90)
let trdangle = (180-secangle*2)



turtle.penUp()
turtle.forward(steps: 30)
turtle.left(by: 90)
turtle.right(by: angle)
turtle.penDown()
turtle.currentPosition()
turtle.currentHeading()
turtle.forward(steps: 22)
turtle.currentPosition()
turtle.currentHeading()
turtle.right(by: secangle)
turtle.left(by: angle)
turtle.forward(steps: 22)
turtle.left(by: secangle*2)
turtle.forward(steps: 22)
turtle.right(by: secangle)
turtle.left(by: angle)
turtle.forward(steps: 22)
turtle.left(by: secangle*2)
turtle.forward(steps: 22)
turtle.right(by: secangle)
turtle.left(by: angle)
turtle.forward(steps: 22)
turtle.left(by: secangle*2)
turtle.forward(steps: 22)
turtle.right(by: secangle)
turtle.left(by: angle)
turtle.forward(steps: 22)
turtle.penUp()
turtle.setHeading(to: 90)
turtle.forward(steps: 60)














/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
