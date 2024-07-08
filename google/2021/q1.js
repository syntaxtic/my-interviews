// Topic: closures, settimeout

// Implement a function which should provide the result as below

let i = 0;
let fn = () => {
  i++;
};

let fn2 = debounce(fn, 300);

fn2();
fn2();
fn2();
console.log(i); // Should print 0
setTimeout(() => {
  fn2();
  console.log(i); // Should print 1
}, 310);

setTimeout(() => {
  console.log(i); // Should print 2
}, 1000);

// Solution
const debounce = (func, delay) => {
  let active = false;
  return () => {
    if (!active) {
      active = true;
      setTimeout(() => {
        func();
        active = false;
      }, delay);
    }
  };
};
