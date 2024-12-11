#!/bin/sh

mongoimport --uri mongodb://mongodb:27017/onlineedu --collection user --file /db/onlineedu.user.json --jsonArray
mongoimport --uri mongodb://mongodb:27017/onlineedu --collection course --file /db/onlineedu.course.json --jsonArray
mongoimport --uri mongodb://mongodb:27017/onlineedu --collection course_subscription --file /db/onlineedu.course_subscription.json --jsonArray
mongoimport --uri mongodb://mongodb:27017/onlineedu --collection forum --file /db/onlineedu.forum.json --jsonArray