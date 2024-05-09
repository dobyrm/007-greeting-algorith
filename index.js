// Import the function from the greeting.js file
const createJamesBondGreeting = require('./build/greeting').default;

// Call the function to get the result
const result = createJamesBondGreeting('James', 'Bond');

// Log the result to the console
console.log(result);
