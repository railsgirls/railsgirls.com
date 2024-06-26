# Rails Girls

Get excited and learn to build the web!

## General
We've given you pull & push access to the site. You can basically copy an existing event page and change the details to match yours. This can be done in a separate branch, but it's ok to make changes directly to master, too. :)

There's also a bunch of things anyone can work on the Issues section. Many of them are easy, quick tasks like updating stuff.

Find a file called **event-template.html**. Copy this file and make a new one with your cityname.


## Publishing the Site
The site will be automatically published every 5 minutes (see when the site was [updated last](https://railsgirls.com/deploy.txt). Notice that the site needs to be accessible all the time and all around the world. Test your changes and be careful when pushing new commits. If the site breaks or you encounter a problem, ping us on **[contact@railsgirls.com](mailto:contact@railsgirls.com)** and someone should run over to help ; )

## Updating the Event
You need to update two places.
 1. Add your city to **railsgirls.com/events/events.json** and add your event in chronological order with the newest at the top of the file. Please enter all the fields and keep the same logic.
 2. Add your city to **railsgirls.com/events.html**

## How to Change the Picture & Header for the Site
Add your city picture **rg-yourcityname.png**. Add it to **/images** folder.

**Steps to Show on Site**
 1. Go to **style.css**
 2. Add two lines, always replacing **'yourcityname'** with your actual city name.

<pre>.yourcityname#promo {
  padding-left:340px;
  background:url('../images/rg-yourcityname.png') no-repeat 0 10px,
                 url('../images/separator.png') no-repeat center bottom;
}
</pre>

It will take a while before the changes show, so don't panic!

## Checklist
- Did you remember to change Twitter & Facebook details?
- Did you include a [Code of Conduct](https://guides.railsgirls.com/guide/)?
- Did you remember to add an e-mail where people can contact you?
- Did you remember to add your event to events.json and events.html?
- Did you add your city to [the Map](http://rails-girls-map.herokuapp.com/#)?

✨ Your event will automatically no longer show in the homepage once the date has gone by. ✨

## How to check on localhost
You can check your modification on localhost with WEBrick.
[WEBrick](https://github.com/ruby/webrick)
<pre>ruby -run -e httpd . -p 8000</pre>
Then open http://localhost:8000/ (modified file path)

## Tools

The example application http://railsgirlsapp.herokuapp.com/ideas is accessible on Heroku with linda@railsgirls.com and pw: rubynhienomekko

Thanks to @ys for the counter you can include on your page.
https://github.com/ys/rails-girls-count#readme
