package com.linksharing

import com.LinkResourceCommand

class LinkResourceController {

    def shareLinkResource(LinkResourceCommand linkResourceCO){
        User user= User.get(session['userId'])
      //  println"...............................${linkResourceCO.topic}......................................."
      //  println(".........${params}............")
        LinkResource linkResource = new LinkResource(params)
        linkResource.createdBy = user
        linkResource.URL=linkResourceCO.url
        linkResource.description=linkResourceCO.description
        linkResource.save(flush: true , failOnError:true)
        linkResourceCO.topic.addToResources(linkResource)
        redirect(controller: 'dashboard',action: 'dashboard')
    }

}
