# REQUIREMENTS

Things you may want to cover:

- **Ruby version : ruby-3.1.0**
- **Bundler version : 2.3.3**
# FriendBook

You need to create an app, commit to github with proper branching and merging, and deploy to heroku. I am providing the functionality that should be in this app:-
- Signup (confirmation mail with token), Sign In, Forgot password, don't receive confirmation token (use Devise gem)

- Users can create posts.
- Users can edit their post details.
- Users can comment on posts.
- Users can like/dislike the post.
- Users can send/accept friend requests to other users.
- Received friend requests will be listed on a specific page from where users can accept and cancel the request.
- There should be a page where all the users are listed.
- There should be a landing page(after signin and sign up redirect here) on which the user can see all posts of his friends.
- There should be a page where users can see their profile, with friends counts and their posts.

Some common things that should be in the app:-
- Proper bootstrap layouts for all pages,
- Validations for all forms,
- Mail for signup and forgot password on heroku,
- Database would be postgresql,
- javascript/jquery basic integration for showing/hiding if required (for ex:- like, unlike),
- Integrate pagination whenever required (use 'will_paginate' or 'kaminari' gem for this. 'kaminari' is a better option.)
