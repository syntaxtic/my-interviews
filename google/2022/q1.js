// Validate a deck of cards
// Numbers: A, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K  && Letters: S, H, D, C
// Possible inputs: "AS", "10D", "KH", "4C"
// Input is an array of strings. No need to validate input. No duplicates. Empty array is valid.

// Questions 1:
// If we have a card starting with any number, the deck must have at least 3 cards with the same number.
// ["AS", "10D", "KH", "4C"] => false
// ["4C", "4H", "4S"] => true
// ["4C", "4H", "4S", "5D"] => false

const checkDeck = arr => {
  const sets = {};

  for (let i = 0; i < arr.length; i++) {
    let number = arr[i].slice(0, arr.length - 1);

    if (sets[number]) {
      sets[number].push(arr[i]);
    } else {
      sets[number] = [arr[i]];
    }
  }

  for (let key in sets) {
    if (sets[key].length < 3) {
      return false;
    }
  }
  return true;
};

// Questions 2:
// If we have a card starting with any letter, the deck must have at least 3 cards with the same letter and all the numbers must be consecutive.

const checkDeck2 = arr => {
  const sets = {};

  for (let i = 0; i < arr.length; i++) {
    let number = arr[i].slice(0, arr.length - 1);
    let letter = arr[i][arr.length - 1];

    if (number === 'A') number = 1;
    if (number === 'J') number = 11;
    if (number === 'Q') number = 12;
    if (number === 'K') number = 13;
    number = Number(number);

    if (sets[letter]) {
      let spot = sets[letter].find(e < number);
      sets[letter].splice(spot == -1 ? 0 : spot, 0, number);
    } else {
      sets[letter] = [number];
    }
  }

  for (let key in sets) {
    let first = sets[key][0];
    let last = sets[key][sets[key].length - 1];
    if (sets[key].length < 3 && last - first + 1 == sets[key].length) {
      return false;
    }
  }
  return true;
};
