//: [Next](@next)
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height:700)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */



// WHAT IS A FUNCTION?
// What does the syntax look like?
// First, we define the function.
// The function name comes after the keyword 'func'
// Then, we list parameters.
// We can list an 'external' label (withSides, for example) and then use an 'internal' label (n, for example).
// This can sometimes make our code more readable, for the person using the function (invoking it) and for the
// function author (when writing the function having shorter internal labels for parameters is sometimes convenient).

func drawPolygon(withSides n : Double, sideLength l : Int, startX x : Int, startY y : Int) {
    
    // Move to the starting point
    canvas.translate(byX: x, byY: y)
    
    // Find the interior angle
    let interior = (n - 2) * 180 / n
    
    // Find the exterior angle
    let exterior = 180 - interior
    
    // Draw the sides using a loop
    for _ in 1...Int(n) {
        
        // Draw the side
        canvas.drawLine(fromX: 0, fromY: 0, toX: l, toY: 0)
        
        // Move to end of line
        canvas.translate(byX: l, byY: 0)
        
        // Rotate
        canvas.rotate(by: Degrees(exterior))
    }
    
    // Move back to the starting point
    canvas.translate(byX: -x, byY: -y)
    

  
}

// Second, once we define a function, for it to do anything, we must invoke it.
// Draw a septagon
drawPolygon(withSides: 7, sideLength: 50, startX: 200, startY: 0)

// Draw a nonagon
drawPolygon(withSides: 9, sideLength: 50, startX: 50, startY: 425)

PlaygroundPage.current.liveView = canvas.imageView


