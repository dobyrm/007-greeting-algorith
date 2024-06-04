// Function to create a full name from first and last names
const createFullName = (firstName: string) => (lastName: string): string => `${firstName} ${lastName}`;

// Function to create a Bond-style greeting
const createBondGreeting = (fullName: string) => (lastName: string): string =>
    `The name's ${lastName}, ${fullName}`;

// Compositional function to create the James Bond greeting
const createJamesBondGreeting = (firstName: string) => (lastName: string): string => {
    // Create the full name
    const fullName = createFullName(firstName)(lastName);
    // Create the Bond-style greeting
    return createBondGreeting(fullName)(lastName);
};

export default createJamesBondGreeting;
