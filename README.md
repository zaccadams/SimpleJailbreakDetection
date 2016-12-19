# SimpleJailbreakDetection
A simple Swift Jailbreak detection for developers looking for source code to do so. In the future this will be updated to be more sophisticated!

## Installation - as per the Demo
1. Copy the **isJailbroken()** function to your own project
2. Use the **if statement** found in the **viewDidLoad** of the demo project.

## Installation - as per code below
First, Copy the below function into the view controller file of your storyboard:
```
func isJailbroken() -> Bool {
        guard let urlScheme = NSURL(string: "cydia://home"), UIApplication.shared.canOpenURL(urlScheme as URL) else {
            return false
        }
        return true
    }
```
    
Secondly, Use the below if/else statement below:

```
if isJailbroken() {
            print("This Device is Jailbroken")
        } else {
            print("Not JAILED")
            self.truLabel.text = "This Device is not Jailbroken"
        }
```
