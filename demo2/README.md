### What is a URL parameter?
A URl parameter is a variable whose values are set dynamically in a page's URL, and can be accessed by its template (your view) and its data sources (your models). It's a very similar concept to a dynamic url.

So what does that look like? Let's say you go to Google and search for `penguins`. When your search results pop up, the url looks something like this: `https://www.google.com/?gws_rd=ssl#q=penguins`. Notice that the word I searched for is now in the URL. It's actually even stored in a variable, `q=penguins`. In this case, Google is expecting a user to enter a value for their search item, which for every Google search will be stored in the variable `q`. If I searched for `cupcakes`, I would see `q=cupcakes`. The parameter here is `q`.

In order for Google to actually take the `q` variable and display search results, it has to be able to do something with it in the backend. When a URL parameter gets to the backend, it's transformed into a hash of the name `params`. That `q` variable then becomes a key in that params hash. It's the exact same process that happens with a dynamic url. It looks something like this:

```ruby
params = {:q => "penguins"}
```

To access the value, it's just like using a normal hash...

```ruby
params[:q]
```

###Let's practice

In `demo2.rb` We've created a route called `/hello`. We no longer have `/:name` in our route, so how can we have any params to pass to our views? We don't have a place for a user to enter any input.

A url parameter is still a dynamic component of a url. We just type it a little different. Let's say we wanted to get `hey there vanessa` to print in our view, just like we did with a dynamic url. We can't just type `localhost:hello/vanessa`. We'll get a 404 page not found. The key to the hash is not set up in the controller, so we need to do something similar to what we saw in the google url. Something like this:  `localhost:hello?name=vanessa`. The question mark indicates that url parameters will be passed in. 

###Challenge
1. Boot up your localhost with shotgun and use your browser to try out the get request that is already set up in the controller. Say hello to yourself. Say hello to someone else. Get crazy. 

2. Create another get request in your controller with a different kind of parameter and message, then try it out in the browser.

