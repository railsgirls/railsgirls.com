# Rails Girls

Get excited and learn to build the web!

## General
We've given you pull & push access to the site. You can basically copy an existing event page and change the details to match yours. This can be done in a separate branch, but it's ok to make changes directly to master, too. :)

There's also a bunch of things anyone can work on the Issues section. Many of them are easy, quick tasks like updating stuff.

Find a file called **event-template.html**. Copy this file and make a new one with your cityname.


## Publishing the Site
Currently you need to notify me or Karri to deploy your changes to the site. We're working on fixing this, but you're not doing anything wrong if your changes aren't showing immediately! Ping us on **[contact@railsgirls.com](mailto:contact@railsgirls.com)** and someone should run over to help ; )

## Updating the Event
You need to update two places.
 1. Add your city to **index.html**
 2. Add your city to **railsgirls.com/events.html**

## How to Change the Picture & Header for the Site
In the **/assets** folder there is something called **rg-header.psd**. Be sure to download the **fonts** also. Name the file **rg-yourcityname-header.png** and your city picture **rg-yourcityname.png**. Add them to **/images** folder.

**Steps to Show on Site**
 1. Go to **style.css**
 2. Add two lines, always replacing **'yourcityname'** with your actual city name.

<pre>.yourcityname#promo {
  padding-left:340px;
  background:url('../images/rg-yourcityname.png') no-repeat 0 10px,
                 url('../images/separator.png') no-repeat center bottom;
}

.yourcityname#promo h1 {
  background:url('../images/rg-yourcityname-header.png') no-repeat left top;
}
</pre>

It will take a while before the changes show, so don't panic!

## Checklist
- Did you remember to change Twitter & Facebook details?
- Did you remember to add your event to index.html and events.html?
- Did you remember to remove your event after it finished?

## Tools
Thanks to @ys for the counter you can include on your page.
https://github.com/ys/rails-girls-count#readme