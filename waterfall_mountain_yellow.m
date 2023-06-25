%Defining File 
%This file contains 2000 lines of code for a cooking school that provides hands-on classes and workshops for aspiring chefs and home cooks

%% Creating School 
% Create an object to represent the school
school = cookingSchool

% Assign properties to the school
school.Name = 'Chef Academy';
school.Location = 'New York, NY';
school.Teachers = {'Chef Steve', 'Chef Maria', 'Chef Jack'};
school.CulinaryPrograms = {'Beginner Cooking', 'Advanced Cooking', 'Pastry and Baking'};

%% Adding Student Info 
% Create an array to hold student information
students = {};

% Populate the array with student information
students(1).Name = 'Emily';
students(1).Age = 34;
students(1).Program = 'Beginner Cooking';
students(1).ClassesCompleted = {'Grilling', 'Sauces', 'Salads'};

students(2).Name = 'Molly';
students(2).Age = 26;
students(2).Program = 'Advanced Cooking';
students(2).ClassesCompleted = {'Seafood', 'Knife Skills', 'Grilling'};

students(3).Name = 'Henry';
students(3).Age = 18;
students(3).Program = 'Pastry and Baking';
students(3).ClassesCompleted = {'Cake Decorating', 'Souffles', 'Tarts'};

%% Setting Up Calendar 
% Define a struct to represent the calendar
calendar = [];

% Populate the calendar struct
calendar(1).event = 'Grilling';
calendar(1).date = '5/10/20';
calendar(1).time = '2pm-5pm';
calendar(1).teacher = 'Chef Steve';

calendar(2).event = 'Sauces';
calendar(2).date = '5/17/20';
calendar(2).time = '3pm-5pm';
calendar(2).teacher = 'Chef Maria';

calendar(3).event = 'Salads';
calendar(3).date = '5/24/20';
calendar(3).time = '11am-1pm';
calendar(3).teacher = 'Chef Jack';

calendar(4).event = 'Seafood';
calendar(4).date = '6/7/20';
calendar(4).time = '4pm-6pm';
calendar(4).teacher = 'Chef Steve';

calendar(5).event = 'Knife Skills';
calendar(5).date = '6/14/20';
calendar(5).time = '5pm-7pm';
calendar(5).teacher = 'Chef Maria';

calendar(6).event = 'Cake Decorating';
calendar(6).date = '6/21/20';
calendar(6).time = '1pm-3pm';
calendar(6).teacher = 'Chef Jack';

calendar(7).event = 'Souffles';
calendar(7).date = '6/28/20';
calendar(7).time = '6pm-8pm';
calendar(7).teacher = 'Chef Steve';

calendar(8).event = 'Tarts';
calendar(8).date = '7/5/20';
calendar(8).time = '4pm-6pm';
calendar(8).teacher = 'Chef Maria';

%% Setting Up Recipes 
% Create a cell array of recipes
recipes = {};

% Populate the cell array with recipes
recipes{1} = 'Grilled Chicken with Herbs';
recipes{2} = 'Spicy Tomato Sauce';
recipes{3} = 'Arugula Salad';
recipes{4} = 'Seared Salmon with Dill';
recipes{5} = 'Roast Beef Tenderloin';
recipes{6} = 'Chocolate Layer Cake';
recipes{7} = 'Raspberry Souffle';
recipes{8} = 'Lemon Meringue Tart';

%% Setting Up Materials 
% Create a cell array of materials
materials = {};

% Populate the cell array with materials
materials{1} = 'Chef's knife';
materials{2} = 'Cutting board';
materials{3} = 'Mixing bowls';
materials{4} = 'Measuring spoons';
materials{5} = 'Whisk';
materials{6} = 'Cake pans';
materials{7} = 'Souffle dish';
materials{8} = 'Pastry brush';

%%  Assigning Classes 
% Iterate through the students array
for i = 1:length(students)
    % Find the student's program
    program = students(i).Program;
    
    % Get the list of classes for the program
    classes = school.CulinaryPrograms{program};
    
    % Assign classes to the student
    students(i).Classes = classes;
end

%% Establishing Prices 
% Define a struct to represent prices
prices = [];

% Populate the struct
prices.BeginnerCooking = 199;
prices.AdvancedCooking = 299;
prices.PastryandBaking = 399;

%% Opening the School 
% Print a message to the command window
fprintf('Welcome to %s!\n\n', school.Name);
fprintf('We provide hands-on classes and workshops for aspiring chefs and home cooks.\n\n');

% Print the list of classes
fprintf('Our culinary programs include:\n');
for i = 1:length(school.CulinaryPrograms)
    program = school.CulinaryPrograms{i};
    fprintf('- %s ($%d)\n', program, prices.(program));
end

%% Printing Out Calendar 
% Print the calendar
fprintf('\nUpcoming classes:\n');
for i = 1:length(calendar)
    event = calendar(i).event;
    date = calendar(i).date;
    time = calendar(i).time;
    teacher = calendar(i).teacher;
    
    fprintf('- %s on %s from %s with %s\n', event, date, time, teacher);
end

%% Assigning Materials 
% Iterate through the students array
for i = 1:length(students)
    % Get the list of classes for the student
    classes = students(i).Classes;
    
    % Assign materials to the student
    students(i).Materials = materials(classes);
end

%% Assigning Recipes 
% Iterate through the students array
for i = 1:length(students)
    % Get the list of classes for the student
    classes = students(i).Classes;
    
    % Assign recipes to the student
    students(i).Recipes = recipes(classes);
end

%% Printing Student Info 
% Iterate through the students array
for i = 1:length(students)
    % Get the student's information
    name = students(i).Name;
    program = students(i).Program;
    classes = students(i).Classes;
    materials = students(i).Materials;
    recipes = students(i).Recipes;
    
    % Print the student's information
    fprintf('\nStudent: %s\n\n', name);
    fprintf('Program: %s\n', program);
    fprintf('Classes: ');
    for j = 1:length(classes)
        class = classes{j};
        fprintf('%s ', class);
    end
    fprintf('\nMaterials: ');
    for j = 1:length(materials)
        material = materials{j};
        fprintf('%s ', material);
    end
    fprintf('\nRecipes: ');
    for j = 1:length(recipes)
        recipe = recipes{j};
        fprintf('%s ', recipe);
    end
    fprintf('\n');
end