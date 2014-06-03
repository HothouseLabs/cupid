Cupid - The incomplete messaging app for Nihilist, yes it's exhausting.
=====

Our product manager has just informed us we need to ship Cupid and has identified some areas below listed in high to low priority but the inverse in complexity.  Please help make cupid whole again.  Ow and we heart (yes pun intended) clean, documented code but also love good design principles (think gang of four, not Jonathan Ive)  

1. Add a single view/controller to display some gui components so people can interact with the app.  It should be able to
display a list of inbound messages and also allow a user to send an outbound message.  It can be as fancy or as ugly as you
want.

2. When a user send a message from whatever ui you created in step #1 the implementation should then mock a response after
a short delay.  So if you send a message to Bob, pretend Bob sends you back a message after some short time period
(hint: schedule something and use the delgates provided)

3. What models would you need to add to support conversations with many users?

4. Persist the messages and/or users to disk in the event the app is restarted.

5. Design a synching algorithm to support the event that a user installs Cupid on another device and deletes some messages.  No code necessary but a quick write up would suffice.





