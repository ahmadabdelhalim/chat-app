# Description

A small Rails web app that allows you to receive and send messages to and from a Telegram Bot.

## My solution to the problem!

  - User sends a message to telegram bot (/start) for example
  - telegram bot receives the message, then sends the message to the rails app
    through the webhook to start a conversation 
  - Rails app receives the message from the webhook then will try to find if the conversation already exists in the database, if so, it will add the message to it, otherwise; it will create a new conversation then will create a message and add it to the conversation
  - User sends a reply from the rails app to the telegram bot
    ![telegram bot](https://i.imgur.com/0XiSueh.png)
    ![rails app](https://i.imgur.com/ywCsMfI.png)

### Requirements

* [Rails 6] 
* [Ruby 2.6.3]
* [ngrok]

### How to use

```sh
$ git clone git@github.com:ahmadabdelhalim/chat-app.git
$ cd chat-app/
$ bundle install
$ rails db:create db:migrate
$ yarn install
```

Before running rails server you should do the following. 
* This application uses a webhook to connect telegram bot to the rails app, so ngrok needs to be installed. 
* After installing ngrok, then run it on port 3000 using ./ngrok http 3000
* In order to make ngrok work with Rails 6 you have to add the ngrok url to the .env file in the root directory, e.g. NGROK_URL='1232131.ngrok.io'
* Then add the telegram bot token to the .env file in the root directory
* Then run rails server
```sh
$ rails s
```
* Then set a webhook using the following url https://api.telegram.org/bot YOUR TELEGRAM BOT TOKEN HERE/setWebhook?url=YOUR NGROK URL HERE/webhooks/telegram_vbc43efbf1343a012454dvd4bfab34l1

* As you can see, I placed a random string to the end of our URL to make sure that nobody will guess it and get access to our bot/user communication. If you’ve done everything ok, when visiting this URL you’ll see a success message which looks something like this:

![telegram bot api success message](https://i.imgur.com/7yDSkHf.png)

```sh
$ bundle exec rspec 
```

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


  [Rails 6]: <https://rubyonrails.org/>
  [Ruby 2.6.3]: <https://www.ruby-lang.org/en/downloads/>
  [ngrok]: <https://ngrok.com/>
   
