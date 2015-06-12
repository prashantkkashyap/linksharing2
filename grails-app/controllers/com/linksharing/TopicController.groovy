package com.linksharing

import com.Visibility
import com.Seriousness
import com.TopicCommand

class TopicController {

    def showTopic(){
        User usr =User.get(session['userId'])
        def subscribeTopic = Topic.get(params.id)

        List <Resource> resourcesList = new ArrayList<Resource>()
        Resource.findAllByTopic(subscribeTopic).each{resource ->
        resourcesList.add(resource.description)
        }

        List subscribedUsers = subscribeTopic.subscriptions*.user

        //println subscribedUsers.first().firstName
//        println subscribedUsers.size()

        long totalSubscribeTopic = Subscription.countByTopic(subscribeTopic)
        int totalTopic = Topic.countByCreatedBy(subscribeTopic.createdBy)
        long totalSubscribeUserTopic=Subscription.countByUser(usr)
        int totalUserTopic = Topic.countByCreatedBy(usr)

        render(view: 'showTopic', model: [subscribeTopic:subscribeTopic.properties, totalSubscribeTopic:totalSubscribeTopic,
                                          totalTopic:totalTopic,totalSubscribeUserTopic:totalSubscribeUserTopic,
                                          totalUserTopic:totalUserTopic,resourcesList:resourcesList,
                                          subscribedUsers:subscribedUsers])

    }

    def createTopicAndSubscribeCreator(TopicCommand topicCO) {
      //  render(params)
        Topic topic = new Topic(params)
       // println(topic.properties)
        User user = User.get(session['userId'])
        //println("${params}")*/
        topic.createdBy = user
        topic.name = topicCO.name
        topic.visibility = topicCO.visibility

        if (user.topics.find { it.name == topicCO.name }) {
            flash.message = "This topic alrady created by user ${user.userName}"
        } else {
            user.addToTopics(topic)
            user.save(flush: true, failOnError: true)
        }
       /* Subscription subscription = new Subscription()
        subscription.seriousness = Seriousness.CASUAL
        subscription.user = user
        subscription.topic = topic
        user.addToSubscriptions(subscription)
        topic.addToSubscriptions(subscription)
        topic.save(flush: true, failOnError: true)
        subscription.save(flush: true, failOnError: true)*/
        redirect(controller: 'dashboard',action: 'dashboard')
    }

}
/*
class TopicCOCommand {
    String name
    Visibility visibility
    }

   */
