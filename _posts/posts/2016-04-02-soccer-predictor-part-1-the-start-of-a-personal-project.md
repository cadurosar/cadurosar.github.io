---
layout: post
title: Soccer Predictor Part 1 - The Start of a Personal Project
modified:
categories: posts
excerpt:
tags: []
image:
  feature:
date: 2016-04-02T18:09:02+02:00
---

# Using machine learning for... soccer results? 

Hello everyone, today I'm starting a personal project of mine: A soccer result predictor that uses neural networks as its base. 

This post is divided in two parts, first is a little about why i'm doing this, the second part is going to be a little descriptor of how I plan to do it

### Why the hell am I doing this?

Well, why not? :) Actually neural networks have been my field of research for the last 7 months, both artificial and clique based networks. But during these 7 months I've never did a full project on machine learning, from gathering the dataset, to designing the network, to being proud of it.

I also wanted to apply it to something outside of the usual (image/sound/characters), so thats how I thought of soccer. Soccer is a beautifull game, and actually predicting it is harder than it sounds. 

Actually you could say that it is not that hard.[In the 2014 world cup, baidu had 100% accuracy in the final phase (but they only had 58% during group phase)](http://trends.baidu.com/worldcup/events/knockout?locale=en). I couldn't find to many details of what baidu was using for their algorithm, but Google created a video showcasing their model that you can see bellow: 

<br><br>

![Baidu wins](http://images.marketing-interactive.com.s3.amazonaws.com/wp-content/uploads/2014/07/Baidu-700x460.jpg "Is it actually that hard?")

<iframe width="560" height="315" src="https://www.youtube.com/embed/YyvvxFeADh8" frameborder="0" allowfullscreen></iframe>

<br>

I also want to use this as a learning process of how to explain and document what I'm doing with words and schemas, but without being able to sense/use visual cues from others to see which parts of what I'm doing they don't understand. I consider this extremely difficult, but also that it would be a wonderfull skill to have.

So let's go!

### How do you plan to do it?

Oh, that's so nice of you to ask, me from five minutes ago. Well for starters I need to define what the hell are going to be my features and how will I obtain them. 

To start the model I will mainly use the ELO ranking as my features. Use the last 30 ELO rankings of each team as the features and so create a baseline model. This model will be barely simple, but should be better than base chance (33%) and will give me a base for comparing my models when I add more features.

But OK, how am I going to get the last 30 ELO rankings of each team for each match? And where can I easily get results for more than a thousand matches?

####uhhhh, internet? <br><br>

![](http://40.media.tumblr.com/tumblr_lbmzg2AoSO1qd9lrdo1_500.jpg)

<br><br>Thankfully we have the amazing work of [Lars Schiefler - Club ELO](http://clubelo.com/) that has the ELO for a LOT (seriously a LOT) of european clubs calculated over a LOT of time(the first ELO of Manchester United in the site comes from 1946!). This is available via an easy to use API that returns a CSV like file. 

Ok so now we only need the results and we can get started. Fortunately there's  [James P. Curley - engsoccerdata: English Soccer Data](https://github.com/jalapic/engsoccerdata) which compiles results from soccer matches since 1871 in csv and .rda files. So now we have our dataset :)

With our sources defined now for the technologies I will be using in the start:

Language : Python
Neural Network frameworks: Keras with Theano backend
CSV parsing: Panda
Data-storage/Dataset management: Sqlite

So keep along for the next episode where I will parse my data

