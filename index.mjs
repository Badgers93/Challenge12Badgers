import mysql from "mysql2";
import inquirer from "inquirer";

// Connect to database
const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: 'root',
      // TODO: Add MySQL password here
      password: 'rootroot',
      database: 'employmentTracker_db'
    },
    console.log(`Connected to the employmentTracker_db database.`)
  );


// Main Menu Function and Choices
async function mainMenu() {
    const choices = [
        'View all departments',
        'View all roles',
        'View all employees',
        'Add a department',
        'Add a role',
        'Add an employee',
        'Update an employee role',
        'Exit',
    ];

    const { option } = await inquirer.prompt([
        {
            type: 'list',
            name: 'option',
            message: 'What would you like to do?',
            choices: choices,
        },
    ]);

    // Handle user choice
    switch (option) {
        case 'View all departments':
            // add viewAllDepartments function
            console.log('Viewing all departments...');
            break;
        case 'View all roles':
            // add viewAllRoles function
            console.log('Viewing all roles...');
            break;
        case 'View all employees':
            // add viewAllEmployees function
            console.log('Viewing all employees...');
            break;
        case 'Add a department':
            // add addDepartment function
            console.log('Adding a department...');
            break;
        case 'Add a role':
            // add addRole function
            console.log('Adding a role...');
            break;
        case 'Add an employee':
            // add addEmployee function
            console.log('Adding an employee...');
            break;
        case 'Update an employee role':
            // add updateEmployeeRole function
            console.log('Updating an employee role...');
            break;
        case 'Exit':
            console.log('Exiting application...');
            process.exit();
            return;
    }

    // returns to main menu after executing chosen option
    await mainMenu();
}

// start application
mainMenu();
