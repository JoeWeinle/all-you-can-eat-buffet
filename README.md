# all-you-can-eat-buffet

`kitchen converge cent` or `kitchen converge ubuntu` get get a whole workflow point to point.

Follows the workflow methodology of:

local development -> source control -> pipline -> chef server

Includes cookboook:

Uses test-kitchen to set up 3 vm's to demonstrate a Chef workflow.

1. gitlab
2. pipeline
3. chef-server-cluster

Manual steps

1. login to gitlab and change password
2. create chef-repo and push chef-repo code
3. login to chef-server and get /tmp/flock.pem
4. add flock.pem contents to data bag in test/fixtures/data_bags/chef_orgs/test.json
5. run kitchen converge OS

The chef-repo jobs runs chef-client???

The chef-repo job calls chef-client on the jenkins node in order for the pipeline recipes to read the Berksfile in the chef-repo workspace, iterate through it and create a job per cookbook. When using test-kitchen, there is no chef-client running, therefore if running everything locally, you will get an error on the chef-repo job and must run kitchen converge OS on your workstation to simulate the chef-client run.
