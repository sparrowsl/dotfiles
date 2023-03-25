Uusing closure to simulate OOP design

```js
function Person(n) {
  let name = n;

  const setName = (n) => name = n;

  const getName = () => name;

  return { setName, getName };
}

const john = Person("John");
console.log(john.getName()) // John
```
