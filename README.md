#  Native Language Learning
## Brett New

Native Language Learning is an app that will allow native speakers of in-demand language connect with other users who wish to learn that language and to speak with each other.

## Technologies Used

* **Application**: *Ruby on Rails 5*<br>
* **Testing**: *Rspec, Capybara, Simplecov, FactoryGirl, PhantomJS, Poltergeist*<br>
* **Database**: *Postgres, ActiveRecord*

Installation
------------

Install by cloning the repository.  
```
$ git clone https://github.com/brettnew/native-language-learners
```

Check to make sure ruby and rails are installed on your machine.  
```
$ ruby -v
$ rails -v
```

If you are on a Mac OS X, run in your home directory:
```
$ brew install imagemagick
$ brew install phantomjs
```

If they are not installed, please follow instructions [here](http://guides.rubyonrails.org/getting_started.html#installing-rails) to install ruby on rails.

Install required gems:
```
$ bundle install
```

Run Postgres:
```
$ postgres
```

Navigate to project file and migrate database:
```
$ rake db: create
$ rake db: migrate
```

Start the Rails webserver:
```
$ rails server
```

Navigate to `localhost:3000` in your browser of choice.

License
-------
_This software is licensed under the MIT license._<br>
Copyright (c) 2016 **Brett New**
