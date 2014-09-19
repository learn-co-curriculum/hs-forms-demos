## Routes in Sinatra

### What are routes?

In Sinatra, a route is simply a HTTP method/verb that is paired with a URL-matching pattern. When your Sinatra application receives a request, it will match that route to a specific controller action that matches that URL pattern.

### What do routes do?

The best way to explain routes is by going through an example. Our application is a medicine application that has a collection of medicines stored in its database.

The hash below represents our database with 3 medicines total.

```ruby
Medicine.all = [
  {id: 7, name: "Penicillin", group: "antibiotic"},
  {id: 17, name: "Advil", group: "anti-inflammatory"},
  {id: 24, name: "Simvastatin", group: "cholesterol"}
]
```

Our application gets a request :`GET /medicines/17`. What happens here?

The first thing Sinatra does is try to match the request to a specific controller action. The controller action it would match is as follows: `get '/medicines/:id'`. Once the request has been matched to the controller action, then it executes the code inside of the controller action block, as shown below:

```ruby
# medicines_controller.rb
get '/medicines/:id' do
  @medicine = Medicine.find(params[:id])

  erb :'/medicines/show.html'
end
```

Let's run through this specific scenario. The HTTP request verb, `GET` matches the `get` method in our controller. The `/medicines` path in the HTTP request matches the `/medicines` path in our controller method. Finally, the `17`, which is an `id` parameter that's being passed into the path, matches the controller's expectation for an `id` parameter to be passed in place of `:id`. Yay! We've successfully matched the request to a controller action!

The next thing that happens is that the `Medicine` table is queried for a medicine object that has the `id` of 17. It seems to match this entry: `{id: 17, name: "Advil", group: "anti-inflammatory"}`. The attributes from this table are then stored in a `Medicine` object, and then assigned to the variable `@medicine`.

Finally, the `@medicine` object is rendered via the `show.html.erb` template inside of the `views/medicines` directory.

### Resources
- [Routes in Sinatra](http://www.sinatrarb.com/intro.html#Routes)
