# DeliverWe


##What is DeliverWe?
DeliverWe is a Web Application designed to help with groups of people ordering food. It was completed by Will Hawkins as his second project during General Assembly DC's Web Development Intensive.

Imagine you're sitting in your office before lunch wondering what you want to eat. Hop onto DeliverWe to check out what other people in your building are ordering and see if you want to join anyone's order. If nothing anyone's getting sounds good, start your own order and invite other people to join you. This way, you can meet delivery minimums easily and split and fees and tip that your order includes.

DeliverWe will show you the cost for each individual person's portion of the order. You'll never have to argue about who owes what again; DeliverWe will do the work for you and help preserve your friendships!

Of note, DeliverWe does not currently place orders for you. It serves as an organizational tool to help one person place the order and get reimbursed by everyone.

Follow the link below to check out this innovative new app!

http://deliverwe.herokuapp.com/

##Demo Available Here
https://youtu.be/2rtm1vINb-A

##Approach Taken
When developing this App, I started small and built the app out from there.

Initially, I'd planned to make an App to help with organizing Happy Hours. Essentially, Users would be able to suggest Happy Hours in the area and then other users would be able to vote on which one they wanted to go to. Then, at lunch one day, two of my friends ordered from the same restaurant unaware of each other's orders. Because they weren't able to consolidate orders, they each paid the delivery fee and overbought so they could reach the minimum. And then, to rub salt in the wound, one person's order arrived 45 minutes after the other's. At this point, I saw an opportunity for a useful App.

I sat down with a Trello board, figured out the Minimum Viable Product (which I decided was the ability to create, view, and join orders) and also added a bunch of desired features in the icebox (ability to input the items you'd like, the math to split the bill correctly, ability to display if an order is below the delivery minimum, a MessageBoard for each order) and started working through the project piece by piece, focusing on one feature at a time.

There's still a lot to be done, a lot of places I want to build this App out, and following this approach I'm confident all be able to continue!

##Technologies Used
Despite the size of the app, the technology is actually fairly simple, but utilized creatively!

- DeliverWe is built on Rails using Ruby.
- ActiveRecord is used for the Database
- The Devise Gem is used for User creation

##Installation Instructions
None! DeliverWe is hosted online and requires no installation whatsoever. Open your favorite Web Browser that isn't Internet Explorer, navigate to  http://deliverwe.herokuapp.com/  and start using DeliverWe!

##Future Features, Questions, and Unsolved Problems:
###Future Features
- Users should be able to input a Username, not just an eMail
- Users should be able to mark an order as placed and have it disappear from the main page
- Users should be able to view their order history
- Orders should stop accepting new Patrons 5 minutes before their designated order time
- Eventually, users should be able to place orders through the app itself
- After that, the app should be able to automatically place the order at the designated time
- WAY down the line, I'd love for the app to charge people for their individual orders rather than making one person front all the money

###Questions and Unsolved Problems:
- Heroku hates .strftime('%I:%M%p') so I had to remove it. I'm not really sure why
- There are issues with resizing the webpage
- I'd like to make the Show Restaurant not a separate page, but something that expands on main page
- Nothing else, everything is perfect, no problems exist, thankyou, bye
