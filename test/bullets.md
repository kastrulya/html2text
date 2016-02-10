Application can publish messages to Backendless for subsequent distribution to
subscribers. Backendless delivers published messages to subscribers as message
objects and/or to devices as push notifications. A message must be published
to a channel (or a group of channels). Backendless supports unlimited number
of channels. Applications can use them as a filtering mechanism - channel
subscribers see messages published only to that channel. Similarly, devices
can specify a channel (or a group of them) when [registering for push
notifications](messaging-device_registration.htm). Message publishing supports
the following scenarios:

 * Publishing with message headers \- headers is a collection of `name = value`
pairs of arbitrary data. Subscribers can set additional filters expressed as
SQL queries which Backendless applies to the headers. When the query matches
the published data in headers, message is delivered to the corresponding
subscriber. [See example](messaging-message_publishing.htm#headers).  

 * Publishing to a subtopic \- Subtopics provide an additional level of [message
filtering](messaging-message_subscription.htm#message-filtering).