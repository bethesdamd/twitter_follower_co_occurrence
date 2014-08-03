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

IMPORTANT: the data file should be sorted so that all the like handles are together.

If this file is large, then creating a link analysis visualization will create an indecipherable "hairball" graphic, where we can't easily discern all the associations.  In this event, an adjacency matrix visualization may be more suitable.

So, we need to calculate, for every given pair of users, how many followers they have in common.

For example, for the above data, the co-occurrences totals would be:

MarwanMuasher:shubeilat,1
MarwanMuasher:majliselhassan,1

Calculating these co-occurrences is a tad compute intensive but can be done quickly if coded properly.  This software, running on an old laptop, will read and process a data file of nearly 1 million lines, in about ten seconds.

Run instructions:

ruby find.rb <filename>

where <filename> is the input file containing the data.

The resulting Centrifuge matrix visualization shows which twitter users have the most followers in common.  We've hovered over the strongest pair, and the tooltip displays the count for this pair.

![alt text](https://raw.githubusercontent.com/bethesdamd/twitter_follower_co_occurrence/master/adjacency_matrix.png "adjacency matrix image")

