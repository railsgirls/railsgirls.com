# Rails Girls

Get excited and learn to build the web!

## General
We've given you pull & push access to the site. You can basically copy an existing event page and change the details to match yours.
This can be done in a separate branch, but it's ok to make changes directly to master, too. :)

There's also a bunch of things anyone can work on the Issues section. Many of them are easy, quick tasks like updating stuff.

First you'll need to create the new post, which will be done in the `_posts` directory. You'll name the file based on when it will be.
For example, if we were having a Rails Girls event in Inverness, Scotland on September 21, 2025 then the file would be called
`2025-09-21-inverness.html`

Open your newly created file and copy the following template into it. Update the details to match those
for your event:

```markdown
---
layout: post
title: Rails Girls Inverness
date: 2025-09-21
events_image: rg-singapore.jpg
location: Inverness, Scotland
date_description: 20-21 September, 2025
permalink: inverness-2025.html
---

Details of your event in HTML or Markdown
```

You can learn more about [Markdown here](https://help.github.com/articles/markdown-basics/)

## Publishing the Site
The site will be automatically published hourly through the day. Notice that the site needs to accessible all the time and all around the world. Test your changes and be careful when pushing new commits. If the site breaks or you encounter a problem, ping us on **[contact@railsgirls.com](mailto:contact@railsgirls.com)** and someone should run over to help ; )

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
- Did you include a [Code of Conduct](http://guides.railsgirls.com/guide/)?
- Did you remember to add an e-mail where people can contact you?
- Did you remember to add your event to index.html and events.html?
- Did you remember to remove your event after it finished?
- Did you add your city to [the Map](http://rails-girls-map.herokuapp.com/#)?


## Tools
The Wufoo form is accessible with team@railsgirls.com and pw: rubynhienomekko

The example application http://railsgirlsapp.herokuapp.com/ideas is accessible on Heroku with linda@railsgirls.com and pw: rubynhienomekko

Thanks to @ys for the counter you can include on your page.
https://github.com/ys/rails-girls-count#readme
