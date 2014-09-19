###URL params plus input forms

Users can submit information to the backend via the address bar in their browser but that's not a very user friendly model. We're more used to interacting with web applications by clicking buttons and typing in information that we want posted on the internet. When we type in information that we want to post we are filling out forms. Forms are created using HTML form and input tags.

When we submit the form we are submitting the information to the controller through a new type of HTTP request called POST. We use this naming convention to reflect the fact that we are posting information to the site (as opposed to getting information).

In `demo3.rb` we have both a get request (to display the form) and a post request to take in and show the information that is being submitted via the form. Once our controller takes in the information from the form it then displays it at `localhost:4567/results`.

Now take a look at `index.erb` in the views folder. It starts out with a form tag that has two attributes a method and action. The `method` attribute stores the type of http request that we are making - in this case it is a post request. The `action` attribute stores the appropriate route for the post request. When the form is submitted it will connect with the method in the controller that corresponds to these two attributes. In this case a `post "/results"` method. 

The next part of the form is an input tag. The `type` attribute in the input form stores the type of information that is being submitted. The `name` attribute stores the name of the variable where this information will be stored. So if this form was filled out and submitted with the name "Victoria" the value would be submitted to the back end of our application via a params hash that looks like this:

```ruby
params = {:name => "Vanessa"}
```

The last part of the form is the submit button. The type attribute needs to be equal to submit for the form to work properly.

###Challenge

1. Boot up the site and try submitting different names to the form on `localhost:4567/` and seeing the resulting params on `localhost:4567/results`. 

2. Now that you've used the form try adding your own inputs to it. Follow the for
