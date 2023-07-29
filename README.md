# Private Events Project

### Source
https://www.theodinproject.com/lessons/ruby-on-rails-private-events

### Features
When signed in:  
* Users can create events, and edit and delete their current events  
* Users can view other events
* Users can join and leave events created by others
* Users can see who else is attending current events

When signed out:  
* Users can view all events
* Users can view details of specific events, past or present
* Users cannot create, edit, or delete events
* Users cannot attend or leave events

### Ruby Version
Version 3.2.2  
Use `ruby -v` to see your system version

### Rails Version
Version 7.0.6  
Use `rails -v` to see your system version

### Devise Gem Version
Version 4.9  
To add the devise gem check out the README here https://github.com/heartcombo/devise

### Setup
1. Clone the repo `git cone https://github.com/kguyer/Private_Events`

2. Setup the database `bin/rails db:setup`, then migrate `bin/rails db:migrate`

3. Start the server `rails server`

4. Visit `localhost:3000` to view the app in your browser