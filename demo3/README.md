###URL params plus input forms

Users can submit information to the backend of an application via the address bar in their browser but that's not a very user friendly model and it's not very secure. Imagine if every time you submitted a password or credit card number to a website and it just lingered there in your navigation bar for all of the world to see. We're more used to interacting with web applications by clicking buttons and typing in information that we want posted on the internet by filling out forms. Forms are created using HTML form and input tags.

When we submit a form we send the information to the controller through a new type of HTTP request called POST. We use this naming convention to reflect the fact that we are posting information to the site (as opposed to getting information from the site). A POST request is also slightly more secure than a GET request because the information we are submitting will not be displayed in the URL parameters in the navigation bar of our browser.

In `demo3.rb` we have both a get request (to get the HTML and display the form) and a post request that takes the information being submitted via the form and displays the params hash in our browser at `localhost:4567/results`.

Now take a look at `index.erb` in the views folder. It starts out with a form tag that has two attributes: a **method** and **action**. The `method` attribute stores the type of http request that we are making - in this case it is a post request. The `action` attribute stores the appropriate route for the post request. When the form is submitted it will connect with the method in the controller that corresponds to these two attributes. In this case a `post '/results'` method. 

The next part of the form is an input tag. The `type` attribute of the input tag stores the type of information that is being submitted. The `name` attribute stores the name of the variable where this information will be stored. So if this form was filled out by a user and submitted with the species "Emperor" the value that would be submitted to the back end of our application via a params hash looks like this:

```ruby
params = {:species => "Emperor"}
```

If we wanted to take in information about the size of the penguin, we could add an additional input to our form that would look something like this:

```html
Size: <input type="text" name="size">
```

The last part of any form is the submit button. The type attribute needs to be equal to submit for the form to work properly.

###Challenge

1. Boot up the site by running `ruby demo3.rb` and try submitting different penguin species to the form on `localhost:4567/` and seeing the resulting params on `localhost:4567/results`. 

2. Now that you've used the form try adding your own inputs to it, like the example that we gave with size. 

