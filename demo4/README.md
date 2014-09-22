###Integrating forms and models

In the last demo we created forms to take in information but we didn't have any models to process the information. If we want to create object that we can manipulate, we need to tie in a model.

Notice that in our controllers we still have a get request and a post request. We also still have a form (in `views/index.erb`). There are two things that are different. We've added a `penguin.rb` file with a Penguin class and our post request looks a lot different. 

In `penguin.rb` we've built out a Penguin class with an initialize method that creates a penguin with four attributes. 

We are expecting a user to create a new penguin by filling out a form with penguin attributes. When the user hits submit these attributes are passed to a post controller via a params hash. In the `post '/results'` we are pointing to a new view `penguin.erb`. The controller is responsible for taking data from a user, passing it to the model, taking that data from the model and then passing it back out to the appropriate view. 

If we want to display the new penguin in that view we also need to create a new instance of the Penguin class using the params that were passed in by the form. We are storing the instance of the penguin in an instance variable so it can be displayed in our `penguin.erb` view.

###Challenge

1. Play with the form and see how it works.

2. Create a new get request that points to a new form. You'll also have to create a new post request to take in the information from the form, a new model to process that information, and a new view to display the results.


