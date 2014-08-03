### Compute co-occurrences in Twitter follower data

Assume you have a file of Twitter follower data like this:

handle,follower_id

MarwanMuasher,248157523

MarwanMuasher,357695535

MarwanMuasher,435585077

MarwanMuasher,281706554

shubeilat,762576882

shubeilat,248157523

shubeilat,1233027060

majliselhassan,435585077

majliselhassan,2390808858

majliselhassan,201906463

If this file is large, then creating a link analysis visualization will create an indecipherable "hairball" graphic, where we can't easily discern all the associations.  In this event, an adjacency matrix visualization may be more suitable.

So, we need to calculate, for every given pair of users, how many followers they have in common.

Calculating the co-occurrences is a tad compute intensive but can be done quickly if coded properly.  That's what this software does.


