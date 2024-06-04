import createJamesBondGreeting from "./src/greeting";

// Extract command-line arguments (skip the first two which are 'node' and the script path)
const args = process.argv.slice(2);

if (args.length !== 2) {
    console.error("Please provide exactly two arguments: firstName and lastName");
    process.exit(1);
}

const [firstName, lastName] = args;

// Generate the greeting
const greeting = createJamesBondGreeting(firstName)(lastName);
console.log("\x1b[5m", "\x1b[32m", "\x1b[44m", greeting, "\x1b[0m"); // Outputs: "The name's lastName, firstName lastName"
