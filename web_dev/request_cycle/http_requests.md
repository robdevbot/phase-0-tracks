2. What are some common HTTP status codes?
Probably the most famous status code is 404, indicating "Page not found". Another common one is 500, meaning an Internal Server Error has occurred. Status code 400, "Bad Request", is also fairly well-known.
These codes are commonly seen because they correspond to errors, whereas successful status codes aren't usually reported to the user. Status codes indicating success are therefore probably the most commonly sent. These codes are generally in the 200s, and include 200 ("OK"), 201 ("Created"), and 202 ("Accepted").



3. What is the difference between a GET request and a POST request? When might each be used?
GET is a request to receive information, whereas POST is a request to submit data into a resource for processing.

GET is probably the more commonly-used request, as it is used for most client requests for a page.
POST would be used for things like sending data from a form to be processed.


4. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a small bit of data used to store some kind of persistent data on a client's web browser. This could include the user's login status, their preferred theme, or some other information.

Cookies are implemented as an HTTP header on the server. So when a client requests a page, and the server processes the GET request, the server will also send cookie data to the browser.