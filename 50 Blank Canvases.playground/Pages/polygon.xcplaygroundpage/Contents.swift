//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?

//DRAW A TRIANGLE


// where are we
canvas.drawAxes()

//draw the triangle up and over a bit
canvas.translate(byX: 25, byY: 25)

//where am I know?
canvas.drawAxes()

//thick lines
canvas.defaultLineWidth = 5

//draw side one
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 120) // exterior angle

//draw second side
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 120) // exterior angle

//draw third side
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 120) // exterior angle

//go back to where we started
canvas.translate(byX: -80, byY: -0)


//DRAW A SQUARE

// where are we
canvas.drawAxes()

//draw the square up and over a bit
canvas.translate(byX: 25, byY: 125)

//where am I know?
canvas.drawAxes()

//thick lines
canvas.defaultLineWidth = 5

//draw side one
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 90) // exterior angle

//draw second side
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 90) // exterior angle

//draw third side
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 90) // exterior angle

//draw fourth side
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 90) // exterior angle

//go back to where we started
canvas.translate(byX: -25, byY: -125)


//DRAW A PENTAGON
// where are we
canvas.drawAxes()

//draw the pentagon up and over a bit
canvas.translate(byX: 25, byY: 180)

//where am I know?
canvas.drawAxes()

//thick lines
canvas.defaultLineWidth = 5

//draw all sides

for _ in 1...5 {
    
    //     happens 5 times
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    
    canvas.translate(byX: 80, byY: 0)
    canvas.rotate(by: 72) // exterior angle
    
}

//go back to where we started
canvas.translate(byX: -25, byY: -180)


// DRAW HEXAGON

// where are we
canvas.drawAxes()

//draw the hexagon up and over a bit
canvas.translate(byX: 25, byY: 200)

//where am I know?
canvas.drawAxes()

//thick lines
canvas.defaultLineWidth = 5

//draw all sides

for _ in 1...6 {
    
    
    //     happens 6 times
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    
    canvas.translate(byX: 80, byY: 0)
    canvas.rotate(by: 60) // exterior angle
    
    
}
//go back to where we started
canvas.translate(byX: -25, byY: -200)



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

