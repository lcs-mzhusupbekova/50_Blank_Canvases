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

// Horizontal loop
for x in stride(from: 25, through: 475, by: 50){
    
    // Vertical loop
    for y in stride(from: 475, through: 25, by: -50){
        
        // Large white circle
        canvas.fillColor = Color.white
        canvas.drawEllipse (centreX: x, centreY: y, width: 40, height: 40)
        
        // Entropy (random value)
        let value = random(from: 1, toButNotIncluding: 5)
        
        // Decide what direction to offset based on random value
        canvas.fillColor = Color.black
        if value == 1 {
            canvas.drawEllipse (centreX: x, centreY: y-15, width: 30, height: 30)
        }
        else if value == 2 {
            canvas.drawEllipse (centreX: x, centreY: y+15, width: 30, height: 30)
        }
        else if value == 3 {
            canvas.drawEllipse (centreX: x-15, centreY: y, width: 30, height: 30)
        }
            
        else {
            canvas.drawEllipse (centreX: x+15, centreY: y, width: 30, height: 30)
        }
    }
}




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

