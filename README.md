WomenWhoCode API

#About
This is the API for the WomenWhoCode web app. It works in conjunction with the web client app, which you can find [here](https://github.com/WomenWhoCode/wwcode-webclient-app).

This API is a REST API built with Ruby on Rails. Currently, return format for all endpoints is JSON.

#Installation
1. Fork the GitHub repository and clone the fork to your local environment
1. Create a remote to the upstream repository: `git remote add upstream git@github.com:WomenWhoCode/wwcode_api.git`
1. Copy the file `config/database.yml.example` to `config/database.yml` and update the username and password in the development and test environments to match your Postgres installation

#Contributing and developing a feature
1. Make sure you are in the master branch: `git checkout master`
2. Sync your copy: `git fetch upstream` then `git merge upstream/master`
3. Create a new branch with a meaningful name: `git checkout -b branch_name`
4. Develop your feature on your branch
5. Add the files you changed: `git add file_name` (avoid using `git add .`)
6. Commit your changes: `git commit -m "Message briefly explaining the feature"`
7. We have small Pull Requests; try to keep one commit per feature.
8. Push to your fork: `git push origin branch_name`
9. Go into the wwcode_api GitHub repo and create a pull request explaining your changes.  Please include one of the special keywords in either your commit message or your pull request that will automatically close your issue once your pull request is accepted.  See [closing an issue via a commit](https://help.github.com/articles/closing-issues-via-commit-messages/) or [closing an issue via a pull request](https://github.com/blog/1506-closing-issues-via-pull-requests) for examples.

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
