# mixpanel-smalltalk
[Mixpanel](https://mixpanel.com) Pharo Smalltalk Client Library

## Supported Smalltalk Versions
[Pharo Smalltalk](http://pharo.org/) 4.0

## Installation

```smalltalk
Metacello new
    baseline: 'Mixpanel';
    repository: 'github://newapplesho/mixpanel-smalltalk:v0.1/pharo-repository';
    load.
```

or

```smalltalk
Gofer new
url:'http://smalltalkhub.com/mc/newapplesho/mixpanel-smalltalk/main';
    package: 'ConfigurationOfMixpanel';
    load.
(Smalltalk at: #ConfigurationOfMixpanel) load.
```


## How to use

### Setup

```smalltalk
"Mixpanel project token, PROJECT_TOKEN"
MixpanelSettings default token:'PROJECT_TOKEN'.
```


### Sending events

```smalltalk
tracker := MixpanelTracker new.
tracker track:'Sent Message'.
```

```smalltalk
tracker := MixpanelTracker new.
json := NeoJSONObject new.
json at:'Programming language' put:'Pharo Smalltalk'.
json at:'version' put:'4.0'.
tracker track:'Sent Message' properties: json.
```

```smalltalk
tracker := MixpanelTracker new.
json := MixpanelEngagementJsonObject new.
json browser:'Safari'.
json os:'Mac'.
json referrer:'http://www.sorabito.com/'.
json currentUrl:'https://allstocker.com/'.
" XXXX.XXXX.XXXX.XXXX is ip address. "
tracker track:'Sent Message' properties: json ip:'XXXX.XXXX.XXXX.XXXX'.
```

### Managing user identity

The Mixpanel library will assign a default unique identifier (we call it "distinct_id") to each unique user who comes to your website.

```smalltalk
tracker := MixpanelTracker new.
"distinct_id 13793"
tracker identify:'13793'.
tracker track:'Sent Message'.
```

### Storing user profiles

```smalltalk
tracker := MixpanelTracker new.
tracker identify:'13793'.
people := tracker people.
json := MixpanelPeopleJsonObject new.
json firstname:'Sho'.
json lastname:'Yoshida'.
json at:'Favorite programming language' put:'Smalltalk'.
people setUserProfiles: json.
```
