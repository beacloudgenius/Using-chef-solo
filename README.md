**Using Chef Solo:** an example that lets you easily install chef solo on a vanilla ubuntu box and invoke a chef solo run that setup apache server

Chef is a great tool systematically operate large scale infrastructure in the cloud.

How to use:
- Clone this repo locally
- run-chef-solo as superuser

First run:
- script will install chef and its dependencies
- run chef solo (which will invoke the apache recipe from the cookbooks folder)

Subsequent runs:
- run chef solo (which will invoke the apache recipe from the cookbooks folder)

How to test:
- run chef once
- test if webserver is running by opening the browser and visiting http://localhost/
- If successful, you will see "It works" page that apache generates

- kill apache server and note in browser that http://localhost is not accessible.
	- ps -ef | grep apache
	- sudo kill -9 { process-id }
- run chef again and note in browser that http://localhost is showing the "It works" page

- remove apache completely and note in browser that http://localhost is not accessible.
	- sudo apt-get remove apache2
	- sudo apt-get autoremove

- run chef again and note in browser that http://localhost is showing the "It works" page


Chef (run periodically via cron) runs keep your system in a state you desire.
