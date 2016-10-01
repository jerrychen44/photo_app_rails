# README

Main Feature
1.Login/out system.
2.email activation when sign up.

Take a look this demo site: https://photo-app-jerry04.herokuapp.com/



For safry, remove the AWS key in heroku.(So, image uplard will fail.)

You can add back by below command.

heroku config:set S3_ACCESS_KEY=youraccesskeyforIAMuser

heroku config:set S3_SECRET_KEY=yoursecretykeyforIAMuser

heroku config:set S3_BUCKET=yours3bucketname


