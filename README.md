# Picker crash in SwiftUI

When I have the same setup as this repo, I can reproduce a crash when selecting an item in a Picker and then going back to the previous screen, but only when I have a ForEach to generate the Text items.

![https://i.imgur.com/r82MsN0.png](https://i.imgur.com/r82MsN0.png)

My setup looks like this:

Screen A: Order screen
- Has a NavigationView
  - Has a NavigationLink to the screen B, the Checkout Screen

Screen B: Checkout screen
- Has a Form
  - Has a Picker
    - Has a DefaultPickerStyle
    - Has a ForEach to create the Text items
    

If I remove the ForEach and create directly the Text views, the crash doesn't happen.
Or if I change from DefaultPickerStyle to SegmentedPickerStyle, the crash doesn't happen either.

Repro video:
https://www.youtube.com/watch?v=7j2ffkyuSzM

Open Radar:
http://openradar.appspot.com/radar?id=5065201384685568
