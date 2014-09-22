##Dynamic URLs
How does Twitter post your tweets? How does facebook upload your photos? How does tumblr air your most secret guilty pleasures? All of these web applications take in information from a user, mutate that information, and then display it back to them. 

Web applications use the URL to pass information from the frontend to the backend. 

One way to do this is by using dynamic urls. A dynamic url is a url comprised of two things: a static component and a dynamic component. The static components of a URL are parts like `www.google.com`. The dynamic part of the url changes based on an action a user takes in order for a specific page to load. This action can be clicking a link, or like in this lab, manually changing the URL.

If you think dynamic routes are super interesting and would love to learn more check out the `ROUTES_README.md` in the `demo1` directory.


###Let's try a simple example

In `demo1.rb` we've set up a basic Sinatra controller. You can see we have a get request, but that route name looks a little funny. Whats up with that `:name`? In this example, we're setting up `:name` to be a dynamic value. When you have a symbol in your route, you're expecting a value from your user.

In this case, the controller expecting `:name` to change based on whatever name we feel like typing. In the browser address bar I can enter `localhost:4567/hello/vanessa`.

The controller then transfers that information into a params hash:

```ruby
params = {:name => "vanessa"}
```

We can access that value just like a hash: `params[:name]`.

Try booting up your localhost server and playing around with different names in the address bar in the place of `:name`. In the body of the page, you should see `Hey there name_you_entered_in_address_bar`.

In order to start this application, in terminal enter `ruby demo1.rb`. You'll want to look for the port number once the server starts and in your browser go to `localhost:port_number`.
