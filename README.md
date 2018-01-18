# Sparta GEO techtest

## Project brief
We have provided mini-schema.xml (please rename as .zip and extract).

1. Write webserver with a REST API to get the notes for a device. This will need to parse the xml and return the appropriate notes given device name as a parameter of the REST call

2. Write a test script to test the operation of the webserver

3. Wrap this script in a unit test framework

4. Enhance the test script to explore the result of verbs other than ‘get’ (which should fail).

5. Enhance the webserver and tests to return all devices

## How to run the app
First you will need to install the gems which are required to run the app, in the terminal run:
```
bundle install
```
To run the app locally:
```
rackup
```
Then in any browser of your choice go to the url:
```
localhost:9292
```

### Running the tests
To run the tests, while being in the root directory, in the terminal:
```
rspec
```
The tests cover the SOM(Service object model) on the landing page

## Time spent

>Total time spent for this project was: 6 hours and 5 minutes + 5 hours implementing further requirements and changes

4 hours 30 minutes was spent on setting up the sinatra app and to parse the xml data, majority of this time was spent adding a search feature which returned devices similar to what the user searched for.

1 hour 30 minutes was spent connecting rspec to add SOM(Service object model) testing

The remaining time was spent adding a README file

The extra time spent was because I made a app with a working search bar, however it did not fulfil the requirements, so I had to make changes in a short amount of time, but I which I managed to create SOM testing for the model which I was proud off.
