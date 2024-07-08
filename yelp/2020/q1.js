// System Design: events
// teamwork
// drives

// order the list by most messages, identifying the spams

const loveMessages = [
  {
    receiver: 'andrew@yelp.com',
    msg: 'A delicious Sushi lunch',
    sender: 'stephanie@yelp.com',
  },
  {
    receiver: 'brad@yelp.com',
    msg: 'Integer overflow detective work',
    sender: 'wing@yelp.com',
  },
  {
    receiver: 'jason@yelp.com',
    msg: 'Great presentation today',
    sender: 'jeremy@yelp.com',
  },
  {
    receiver: 'andrew@yelp.com',
    msg: 'You have made a huge difference here, certainly something to be proud of',
    sender: 'kyle@yelp.com',
  },
  {
    receiver: 'kyle@yelp.com',
    msg: 'the tron repl is so cool',
    sender: 'jason@yelp.com',
  },
  {
    receiver: 'kyle@yelp.com',
    msg: 'for a python3 upgrade bomb, nbd',
    sender: 'jeremy@yelp.com',
  },
  { receiver: 'qui@yelp.com', msg: 'You did it!', sender: 'kyle@yelp.com' },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam!',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam!',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam!',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam!',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam!',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam!',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam 2',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam 3',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam 4',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam 5',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'anthony@yelp.com',
    msg: 'I love spam 6',
    sender: 'chris@yelp.com',
  },
  {
    receiver: 'kyle@yelp.com',
    msg: 'the tron repl is so cool',
    sender: 'andrew@yelp.com',
  },
];

let msgCounts = {}; // [{"anthony@yelp.com": [hashkey1, hashkey2]} ]

loveMessages.forEach(entry => {
  if (entry.receiver in msgCounts) {
    msgCounts[entry.receiver] += 1;
  } else {
    msgCounts[entry.receiver] = 1;
  }
});

let order = [];

while (Object.keys(msgCounts).length) {
  let mostLove = 0;
  let mostLoved;
  for (receiver in msgCounts) {
    if (msgCounts[receiver] > mostLove) {
      mostLoved = receiver;
    }
  }
  order.push(mostLoved);
  delete msgCounts[mostLoved];
}
