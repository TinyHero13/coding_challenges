/*
Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.
In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.
*/

SELECT 
  tweet_nums as tweet_bucket
  , count(user_id) as users_num
FROM (SELECT 
  count(tweet_id) as tweet_nums
  , user_id
FROM tweets
WHERE YEAR(tweet_date) = '2022'
group by user_id) as tweetss
group by tweet_nums;