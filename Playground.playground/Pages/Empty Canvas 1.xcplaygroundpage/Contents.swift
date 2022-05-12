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

// Begin writing your code below

//starting point
turtle.setPenColor(to: .black)
turtle.setPenSize(to: 1)
turtle.goToHome()
turtle.currentPosition()
turtle.currentHeading()

//degrees used (angle)
extension Float {
    func toDegrees() -> Degrees {
        return Degrees(self * 180.0 / Float.pi)
    }
}

let angle = atan(10.0/20.0).toDegrees()
let length = sqrt(100+400)
let secangle = (180-angle-90)
let trdangle = (180-secangle*2)
 
//high performance on
canvas.highPerformance = true

//move to first starting point

turtle.penUp()
turtle.forward(steps: 30)
turtle.left(by: 90)

//function for my fill square
func FillSq() {

    for _ in 1...10{
        turtle.forward(steps: 20)
        turtle.left(by: 90)
        turtle.forward(steps: 1)
        turtle.left(by: 90)
        turtle.forward(steps: 20)
        turtle.right(by: 90)
        turtle.forward(steps: 1)
        turtle.right(by: 90)
        turtle.currentHeading()
        turtle.currentPosition()
    }
    
}

//funtions for my star
func drawstar(){
    
    //down angle right line created
    turtle.right(by: angle)
    turtle.penDown()
    
    //right angle created
    turtle.forward(steps: 22)
    turtle.currentPosition()
    turtle.currentHeading()
    turtle.right(by: secangle)
    turtle.left(by: angle)
    turtle.forward(steps: 22)
    turtle.left(by: secangle*2)
    
    //top angle created
    turtle.forward(steps: 22)
    turtle.right(by: secangle)
    turtle.left(by: angle)
    turtle.forward(steps: 22)
    turtle.left(by: secangle*2)
    
    //left angle created
    turtle.forward(steps: 22)
    turtle.right(by: secangle)
    turtle.left(by: angle)
    turtle.forward(steps: 22)
    turtle.left(by: secangle*2)
    
    // down angle left line create
    turtle.forward(steps: 22)
    turtle.right(by: secangle)
    turtle.left(by: angle)
    turtle.forward(steps: 22)
    
    //prepare for next star
    turtle.penUp()
    turtle.setHeading(to: 90)
    turtle.forward(steps: 60)
    
   //fill square
    
    turtle.right(by: 180)
    turtle.forward(steps: 40)
    turtle.setHeading(to: 180)
    turtle.forward(steps: 10)
    
    turtle.setHeading(to: 0)
    turtle.penDown()
    FillSq()
    turtle.penUp()
    //prepare for next star
    turtle.setHeading(to: 90)
    turtle.forward(steps: 20)
    turtle.right(by: 90)
    turtle.forward(steps: 10)
    turtle.setHeading(to: 90)
    
}

//loops for 100 star
//for _ in 1...10{
//    //loops for one row 10 stars
//    for _ in 1...10{
//
//            drawstar()
//
//    }
//    //after one row going to next row
//    turtle.penUp()
//    turtle.right(by: 90)
//    turtle.forward(steps: 60)
//    turtle.right(by: 90)
//    turtle.forward(steps: 600)
//    turtle.left(by: 180)
//}
canvas.highPerformance = true

let angle1 = atan(20.0/10.0).toDegrees()

drawstar()
turtle.setHeading(to: 0)
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.currentHeading()
turtle.currentPosition()
turtle.setHeading(to: 0)
turtle.penDown()


// fill triangle

func filltriangle(){
    

var stepsLeft = 20
turtle.left(by: angle1)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)



turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

stepsLeft = stepsLeft - 1

turtle.left(by: angle+90)
turtle.currentHeading()
turtle.forward(steps: 1)
turtle.left(by: 90-angle)
turtle.forward(steps: stepsLeft)

turtle.right(by: angle1*2)
turtle.forward(steps: 1)
turtle.right(by: 180-angle1*2)
turtle.forward(steps: stepsLeft)

    turtle.currentHeading()
    turtle.currentPosition()
}

turtle.currentPosition()
turtle.currentHeading()
filltriangle()
turtle.currentHeading()
turtle.right(by: turtle.currentHeading())
turtle.currentHeading()
turtle.currentPosition()
turtle.backward(steps: 17)
turtle.currentPosition()
turtle.right(by: 90)
turtle.backward(steps: 6)
turtle.currentPosition()


turtle.left(by: 90)
turtle.forward(steps: 20)
turtle.right(by: 90)
filltriangle()
turtle.currentPosition()
turtle.currentHeading()
turtle.right(by: turtle.currentHeading())
turtle.currentHeading()

turtle.backward(steps: 13)
turtle.currentPosition()
turtle.left(by: 90)
turtle.forward(steps: 17)
turtle.currentPosition()
turtle.right(by: 180)
turtle.forward(steps: 20)
turtle.left(by: 90)
turtle.forward(steps: 20)
turtle.left(by: 180)
turtle.currentPosition()
filltriangle()

turtle.currentPosition()
turtle.currentHeading()
turtle.right(by: turtle.currentHeading())
turtle.currentHeading()
turtle.forward(steps: 16)
turtle.currentPosition()
turtle.right(by: 90)
turtle.forward(steps: 6)
turtle.currentPosition()
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.currentPosition()
turtle.right(by: 90)
filltriangle()
canvas.highPerformance = false







   
  
    








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
