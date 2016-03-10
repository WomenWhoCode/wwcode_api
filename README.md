WomenWhoCode API

#About
This is the API for the WomenWhoCode web app. It works in conjunction with the web client app, which you can find [here](https://github.com/WomenWhoCode/wwcode-webclient-app).

This API is a REST API built with Ruby on Rails. Currently, return format for all endpoints is JSON.

#Installation
Open terminal and clone the GitHub repository 

`$ git clone git@github.com:WomenWhoCode/ww-code-api.git`

Add Heroku remotes for both the staging and production environments

`$ git remote add staging https://git.heroku.com/staging-wwcode-api.git `
`$ git remote add production https://git.heroku.com/staging-wwcode-api.git`

PSequel provides an interface to manage PostgresSQL.  Go to the link below and download the application.
http://www.psequel.com/

To link the PSequel application to your PostgresSQL:
* Log in to your Heroku account and go to Settings.
* Select “reveal config vars”.
* Copy the text that is in “DATABASE_URL”.
* Now go to PSequel and click “import URL from Clipboard.
* From there you should be able to access your PostgreSQL database through PSequel.

You can use PSequel to manually add data to the database.

#Contributing and developing a feature
1. Make sure you are in the master branch git checkout master
2. Sync your copy git pull
3. Create a new branch with a meaningful name git checkout -b branch_name
4. Develop your feature on Android Studio and run it using the emulator or connecting your own Android device
5. Clean your project from Android Studio Build/Clean project
6. Add the files you changed git add file_name (avoid using git add .)
7. Commit your changes git commit -m "Message briefly explaining the feature"
8. We have small Pull Requests, try to keep one commit per feature. If you forgot to add changes, you can edit the previous commit git commit --amend
9. Push to your repo git push origin branch-name
10. Go into the Github repo and create a pull request explaining your changes
11. You will need to add a message on the pull request notifying your changes to your reviewer

#Models
The following are models created:
* Event
* Network
* Personalization Answer
* Personalization Detail
* Personalization Question
* Post
* Profile
* Reply
* Subscribe
* User
* User Access Code

As of 03/2016, endpoints are set up with User, Profile, and Event.

#Cross Origin Requests
The app is setup to only allow cross origin requests with the following domains:
` 'localhost:3000', 'staging-wwcode-client.herokuapp.com/', 'staging-wwcode-api.herokuapp.com/', 'production-wwcode-api.herokuapp.com/', 'production-wwcode-client.herokuapp.com/' `

If another domain must be added, you can add it to config/application.rb and add it as an `origin` under `config.middleware.use Rack::Cors do`.

#Known Bugs
Validation with the access code upon sign up does not generate the correct error yet.
