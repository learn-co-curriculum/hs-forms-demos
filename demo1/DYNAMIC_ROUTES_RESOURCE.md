## Routes in Sinatra

### What are routes?

In Sinatra, a route is simply a HTTP method/verb that is paired with a URL-matching pattern. When your Sinatra application receives a request, it will match that route to a specific controller action that matches that URL pattern.

### What do routes do?

The best way to explain routes is by going through an example. Our application is a medicine application that has an array containing three instances of a Medicine class.

Here's our array:

```ruby
all_the_medicines = [ 
  #<Medicine:0x007fb739b1af88 @id=1, @name="penicillin" @group="antibiotic">, 
  #<Medicine:0x007fb739b1af88 @id=2, @name="advil" @group="anti-inflammatory">, 
  #<Medicine:0x007fb739b1af88 @id=3, @name="benadryl" @group="anti-histamine">
]
```

Our application gets a request :`GET /medicines/1`. What happens here?

The first thing Sinatra does is try to match the request to a specific controller action. The controller action it would match is as follows: `get '/medicines/:id'`. Once the request has been matched to the controller action, then it executes the code inside of the controller action block, as shown below:

```ruby
# medicines_controller.rb
get '/medicines/:id' do
  @medicine = all_the_medicines.select do |medicine|
    medicine.id == params[:id]
  end.first
  
  erb :'/medicines/show.html'
end
```

Let's run through this specific scenario. The HTTP request verb, `GET` matches the `get` method in our controller. The `/medicines` path in the HTTP request matches the `/medicines` path in our controller method. Finally, the `17`, which is an `id` parameter that's being passed into the path, matches the controller's expectation for an `id` parameter to be passed in place of `:id`. Yay! We've successfully matched the request to a controller action!

The next thing that happens is that the `all_the_medicines` array is queried for a medicine object that has the `id` of 1. It seems to match this entry: `#<Medicine:0x007fb739b1af88 @id=1, @name="penicillin" @group="antibiotic">,`. The attributes from this object are assigned to the variable `@medicine`.

Finally, the `@medicine` object is rendered via the `show.html.erb` template inside of the `views/medicines` directory.

### Resources
- [Routes in Sinatra](http://www.sinatrarb.com/intro.html#Routes)
