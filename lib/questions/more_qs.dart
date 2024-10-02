import 'package:quiz_app/models/question_struct.dart';

Map<String, int> questionsMenu = {
  "Computer Science": 1,
  "Science ": 2,
  "General Knowledge": 3,
  "Political Science": 4,
};

Map<int, List<QuizQuestion>> catalogue = {
  1: csQuizQuestions,
  2: scienceQuizQuestions,
  3: gkQuizQuestions,
  4: politicalScienceQuizQuestions,
};

const List<QuizQuestion> politicalScienceQuizQuestions = [
  QuizQuestion("Who was the first Prime Minister of independent India?", [
    "Jawaharlal Nehru",
    "Mahatma Gandhi",
    "Sardar Vallabhbhai Patel",
    "Dr. B.R. Ambedkar"
  ]),
  QuizQuestion("What is the capital of India?",
      ["New Delhi", "Mumbai", "Kolkata", "Chennai"]),
  QuizQuestion("Which Indian state has the longest coastline?",
      ["Gujarat", "Maharashtra", "Tamil Nadu", "Andhra Pradesh"]),
  QuizQuestion("Who is known as the Father of the Indian Constitution?", [
    "Dr. B.R. Ambedkar",
    "Jawaharlal Nehru",
    "Sardar Vallabhbhai Patel",
    "Mahatma Gandhi"
  ]),
  QuizQuestion("What is the national language of India?",
      ["Hindi", "English", "Bengali", "Tamil"]),
  QuizQuestion("Which river is considered the holiest river in India?",
      ["Ganges", "Yamuna", "Brahmaputra", "Narmada"]),
  QuizQuestion("Which Indian state is known as the 'Land of Five Rivers'?",
      ["Punjab", "Haryana", "Rajasthan", "Gujarat"]),
  QuizQuestion("Who was the first President of India?", [
    "Dr. Rajendra Prasad",
    "Dr. S. Radhakrishnan",
    "Zakir Husain",
    "V. V. Giri"
  ]),
  QuizQuestion("Which city is known as the Silicon Valley of India?",
      ["Bengaluru", "Hyderabad", "Pune", "Chennai"]),
  QuizQuestion("What is the official currency of India?",
      ["Rupee", "Dollar", "Euro", "Pound"]),
  QuizQuestion("Who is known as the Iron Man of India?", [
    "Sardar Vallabhbhai Patel",
    "Subhas Chandra Bose",
    "Bhagat Singh",
    "Jawaharlal Nehru"
  ]),
  QuizQuestion("Which is the highest civilian award in India?",
      ["Bharat Ratna", "Padma Vibhushan", "Padma Bhushan", "Padma Shri"]),
  QuizQuestion("Which movement was launched by Mahatma Gandhi in 1942?", [
    "Quit India Movement",
    "Non-Cooperation Movement",
    "Civil Disobedience Movement",
    "Swadeshi Movement"
  ]),
  QuizQuestion("Who wrote the Indian National Anthem?", [
    "Rabindranath Tagore",
    "Bankim Chandra Chattopadhyay",
    "Sarojini Naidu",
    "Subramania Bharati"
  ]),
  QuizQuestion("Which is the smallest state in India by area?",
      ["Goa", "Sikkim", "Tripura", "Nagaland"]),
  QuizQuestion("Which state in India is known for its tea gardens?",
      ["Assam", "Kerala", "Tamil Nadu", "West Bengal"]),
  QuizQuestion("Which city is known as the financial capital of India?",
      ["Mumbai", "Delhi", "Kolkata", "Chennai"]),
  QuizQuestion("Who was the first woman Prime Minister of India?",
      ["Indira Gandhi", "Sonia Gandhi", "Pratibha Patil", "Sushma Swaraj"]),
  QuizQuestion("Which mountain range forms the northern border of India?",
      ["Himalayas", "Aravalli Range", "Vindhya Range", "Satpura Range"]),
  QuizQuestion("Who founded the Indian National Congress in 1885?", [
    "A.O. Hume",
    "Dadabhai Naoroji",
    "Gopal Krishna Gokhale",
    "Bal Gangadhar Tilak"
  ]),
  QuizQuestion("Which Indian state is known as the 'Spice Garden of India'?",
      ["Kerala", "Tamil Nadu", "Karnataka", "Andhra Pradesh"]),
  QuizQuestion("What is the national animal of India?",
      ["Tiger", "Lion", "Elephant", "Leopard"]),
  QuizQuestion("Which river flows through the city of Kolkata?",
      ["Hooghly", "Ganges", "Yamuna", "Brahmaputra"]),
  QuizQuestion("Who was the first Indian to win the Nobel Prize?",
      ["Rabindranath Tagore", "C.V. Raman", "Mother Teresa", "Amartya Sen"]),
  QuizQuestion("Which Indian state has the largest population?",
      ["Uttar Pradesh", "Maharashtra", "Bihar", "West Bengal"]),
  QuizQuestion(
      "Which fort is located in Delhi and is a UNESCO World Heritage Site?",
      ["Red Fort", "Amber Fort", "Gwalior Fort", "Golconda Fort"]),
  QuizQuestion("Who was the first woman President of India?",
      ["Pratibha Patil", "Indira Gandhi", "Sonia Gandhi", "Meira Kumar"]),
  QuizQuestion("Which river is the longest in India?",
      ["Ganges", "Yamuna", "Godavari", "Krishna"]),
  QuizQuestion("What is the national flower of India?",
      ["Lotus", "Rose", "Lily", "Sunflower"]),
  QuizQuestion("Which Indian state is known for its backwaters?",
      ["Kerala", "Goa", "Tamil Nadu", "Andhra Pradesh"]),
  QuizQuestion("Who was the first Governor-General of independent India?", [
    "Lord Mountbatten",
    "C. Rajagopalachari",
    "Warren Hastings",
    "Robert Clive"
  ]),
  QuizQuestion("Which is the oldest mountain range in India?",
      ["Aravalli Range", "Himalayas", "Vindhya Range", "Western Ghats"]),
  QuizQuestion("Who was the founder of the Maurya Empire?",
      ["Chandragupta Maurya", "Ashoka", "Bindusara", "Bimbisara"]),
  QuizQuestion("Which is the largest state in India by area?",
      ["Rajasthan", "Madhya Pradesh", "Maharashtra", "Uttar Pradesh"]),
  QuizQuestion("Which Indian state is known for its bamboo dance, 'Cheraw'?",
      ["Mizoram", "Manipur", "Nagaland", "Tripura"]),
  QuizQuestion("Who is the author of the book 'India Wins Freedom'?", [
    "Maulana Abul Kalam Azad",
    "Jawaharlal Nehru",
    "Sardar Patel",
    "Dr. Rajendra Prasad"
  ]),
  QuizQuestion("Which Indian state is known as the 'Land of Rising Sun'?",
      ["Arunachal Pradesh", "Assam", "Sikkim", "Meghalaya"]),
  QuizQuestion("What is the national tree of India?",
      ["Banyan Tree", "Neem Tree", "Peepal Tree", "Mango Tree"]),
  QuizQuestion("Who is the architect of the Indian Parliament House?",
      ["Edwin Lutyens", "Herbert Baker", "Le Corbusier", "Charles Correa"]),
  QuizQuestion("Which Indian state is famous for the Sun Temple at Konark?",
      ["Odisha", "West Bengal", "Bihar", "Jharkhand"]),
  QuizQuestion("Who was the first Indian woman to climb Mount Everest?",
      ["Bachendri Pal", "Santosh Yadav", "Premlata Agarwal", "Anshu Jamsenpa"]),
  QuizQuestion("Which river is known as the 'Sorrow of Bihar'?",
      ["Kosi", "Ganga", "Yamuna", "Ghaghara"]),
  QuizQuestion("What is the national fruit of India?",
      ["Mango", "Banana", "Apple", "Pineapple"]),
  QuizQuestion("Which Mughal Emperor built the Taj Mahal?",
      ["Shah Jahan", "Akbar", "Jahangir", "Aurangzeb"]),
  QuizQuestion("What is the state animal of Rajasthan?",
      ["Camel", "Elephant", "Tiger", "Peacock"]),
  QuizQuestion("Who is known as the Nightingale of India?", [
    "Sarojini Naidu",
    "Lata Mangeshkar",
    "Indira Gandhi",
    "M.S. Subbulakshmi"
  ]),
  QuizQuestion("Which Indian state is known for the Kathakali dance form?",
      ["Kerala", "Tamil Nadu", "Karnataka", "Andhra Pradesh"]),
  QuizQuestion("Who was the last Governor-General of independent India?", [
    "C. Rajagopalachari",
    "Lord Mountbatten",
    "Warren Hastings",
    "Robert Clive"
  ]),
  QuizQuestion(
      "Which state in India is known for its Blue Mountains or Nilgiris?",
      ["Tamil Nadu", "Kerala", "Karnataka", "Andhra Pradesh"]),
  QuizQuestion(
      "What is the official language of the Indian state of Tamil Nadu?",
      ["Tamil", "Telugu", "Kannada", "Malayalam"]),
];

const List<QuizQuestion> scienceQuizQuestions = [
  QuizQuestion(
      "What is the chemical symbol for water?", ["H2O", "O2", "H2", "CO2"]),
  QuizQuestion("What planet is known as the Red Planet?",
      ["Mars", "Jupiter", "Venus", "Saturn"]),
  QuizQuestion("Who developed the theory of general relativity?",
      ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Niels Bohr"]),
  QuizQuestion("What is the powerhouse of the cell?",
      ["Mitochondria", "Nucleus", "Ribosome", "Endoplasmic Reticulum"]),
  QuizQuestion("What is the hardest natural substance on Earth?",
      ["Diamond", "Quartz", "Gold", "Iron"]),
  QuizQuestion("What is the most abundant gas in the Earth's atmosphere?",
      ["Nitrogen", "Oxygen", "Carbon Dioxide", "Helium"]),
  QuizQuestion(
      "What is the chemical symbol for gold?", ["Au", "Ag", "Fe", "Pb"]),
  QuizQuestion("Who is known as the father of modern physics?",
      ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Nikola Tesla"]),
  QuizQuestion("What planet is closest to the sun?",
      ["Mercury", "Venus", "Earth", "Mars"]),
  QuizQuestion("What is the speed of light in vacuum?", [
    "299,792,458 meters per second",
    "150,000,000 meters per second",
    "30,000 meters per second",
    "3,000,000 meters per second"
  ]),
  QuizQuestion("Who discovered penicillin?",
      ["Alexander Fleming", "Louis Pasteur", "Marie Curie", "Isaac Newton"]),
  QuizQuestion("What is the main gas found in the air we breathe?",
      ["Nitrogen", "Oxygen", "Carbon Dioxide", "Argon"]),
  QuizQuestion("What element does 'O' represent on the periodic table?",
      ["Oxygen", "Gold", "Silver", "Iron"]),
  QuizQuestion("What is the most common type of star in the Milky Way?",
      ["Red Dwarf", "Yellow Dwarf", "Blue Giant", "White Dwarf"]),
  QuizQuestion(
      "What organ in the human body is primarily responsible for filtering blood?",
      ["Kidney", "Heart", "Liver", "Lungs"]),
  QuizQuestion("Who is credited with the discovery of electricity?", [
    "Benjamin Franklin",
    "Thomas Edison",
    "Nikola Tesla",
    "Michael Faraday"
  ]),
  QuizQuestion("What is the center of an atom called?",
      ["Nucleus", "Proton", "Electron", "Neutron"]),
  QuizQuestion(
      "What is the chemical symbol for sodium?", ["Na", "S", "N", "O"]),
  QuizQuestion("What type of galaxy is the Milky Way?",
      ["Spiral", "Elliptical", "Irregular", "Lenticular"]),
  QuizQuestion("What is the boiling point of water at sea level?",
      ["100°C", "90°C", "110°C", "120°C"]),
  QuizQuestion("Who formulated the laws of motion and universal gravitation?", [
    "Isaac Newton",
    "Albert Einstein",
    "Galileo Galilei",
    "Johannes Kepler"
  ]),
  QuizQuestion("What is the process by which plants make their food?",
      ["Photosynthesis", "Respiration", "Digestion", "Transpiration"]),
  QuizQuestion("What is the most abundant element in the universe?",
      ["Hydrogen", "Helium", "Oxygen", "Carbon"]),
  QuizQuestion("What is the term for animals that only eat plants?",
      ["Herbivores", "Carnivores", "Omnivores", "Insectivores"]),
  QuizQuestion("What is the main component of the sun?",
      ["Hydrogen", "Oxygen", "Helium", "Carbon"]),
  QuizQuestion("What does DNA stand for?", [
    "Deoxyribonucleic Acid",
    "Deoxyribonucleic Acid",
    "Deoxyribonucleic Agent",
    "Deoxyribonuclear Acid"
  ]),
  QuizQuestion(
      "What type of bond involves the sharing of electron pairs between atoms?",
      ["Covalent Bond", "Ionic Bond", "Metallic Bond", "Hydrogen Bond"]),
  QuizQuestion("What part of the human body contains the smallest bones?",
      ["Ear", "Hand", "Foot", "Spine"]),
  QuizQuestion(
      "What is the study of the universe beyond Earth's atmosphere called?",
      ["Astronomy", "Geology", "Meteorology", "Oceanography"]),
  QuizQuestion("What is the primary gas found in the Earth's stratosphere?",
      ["Ozone", "Nitrogen", "Oxygen", "Carbon Dioxide"]),
  QuizQuestion("What is the term for a change in a species over time?",
      ["Evolution", "Adaptation", "Mutation", "Selection"]),
  QuizQuestion("What is the most common type of rock on Earth's surface?",
      ["Sedimentary", "Igneous", "Metamorphic", "Limestone"]),
  QuizQuestion(
      "What organ is responsible for pumping blood throughout the human body?",
      ["Heart", "Liver", "Kidney", "Lungs"]),
  QuizQuestion("What is the largest planet in our solar system?",
      ["Jupiter", "Saturn", "Uranus", "Neptune"]),
  QuizQuestion("What is the smallest unit of life?",
      ["Cell", "Tissue", "Organ", "Molecule"]),
  QuizQuestion(
      "What type of energy is stored in the bonds of chemical compounds?", [
    "Chemical Energy",
    "Kinetic Energy",
    "Potential Energy",
    "Thermal Energy"
  ]),
  QuizQuestion("What is the primary function of white blood cells?", [
    "Fight infection",
    "Carry oxygen",
    "Clot blood",
    "Regulate temperature"
  ]),
  QuizQuestion("What is the most abundant metal in the Earth's crust?",
      ["Aluminum", "Iron", "Copper", "Gold"]),
  QuizQuestion("Who is known as the father of modern chemistry?",
      ["Antoine Lavoisier", "Dmitri Mendeleev", "Robert Boyle", "Marie Curie"]),
  QuizQuestion(
      "What is the main gas that contributes to the greenhouse effect?",
      ["Carbon Dioxide", "Oxygen", "Nitrogen", "Helium"]),
  QuizQuestion("What is the primary function of red blood cells?", [
    "Carry oxygen",
    "Fight infection",
    "Clot blood",
    "Regulate temperature"
  ]),
  QuizQuestion("What is the term for the amount of matter in an object?",
      ["Mass", "Weight", "Volume", "Density"]),
  QuizQuestion("What is the largest organ in the human body?",
      ["Skin", "Liver", "Heart", "Lungs"]),
  QuizQuestion("What type of rock is formed from cooling magma or lava?",
      ["Igneous", "Sedimentary", "Metamorphic", "Limestone"]),
  QuizQuestion("What is the most abundant element in the Earth's crust?",
      ["Oxygen", "Silicon", "Aluminum", "Iron"]),
  QuizQuestion(
      "What is the name of the force that pulls objects towards the center of the Earth?",
      ["Gravity", "Magnetism", "Electricity", "Friction"]),
  QuizQuestion(
      "What is the term for an animal that can live both in water and on land?",
      ["Amphibian", "Reptile", "Mammal", "Bird"]),
  QuizQuestion(
      "What is the chemical symbol for iron?", ["Fe", "Ir", "In", "I"]),
  QuizQuestion(
      "What type of cells are responsible for carrying oxygen in the blood?",
      ["Red blood cells", "White blood cells", "Platelets", "Plasma cells"]),
];
const List<QuizQuestion> csQuizQuestions = [
  QuizQuestion("What does CPU stand for?", [
    "Central Processing Unit",
    "Central Performance Unit",
    "Central Process Unit",
    "Computer Processing Unit"
  ]),
  QuizQuestion("Which data structure uses LIFO (Last In, First Out)?",
      ["Stack", "Queue", "Array", "Linked List"]),
  QuizQuestion("What is the time complexity of binary search?",
      ["O(log n)", "O(n)", "O(n log n)", "O(1)"]),
  QuizQuestion("Which of the following is a sorting algorithm?", [
    "Quick Sort",
    "Breadth-First Search",
    "Depth-First Search",
    "Binary Search"
  ]),
  QuizQuestion("What does RAM stand for?", [
    "Random Access Memory",
    "Read Access Memory",
    "Read-Only Memory",
    "Rapid Access Memory"
  ]),
  QuizQuestion(
      "Which programming language is known as the mother of all languages?",
      ["C", "Python", "Java", "Fortran"]),
  QuizQuestion("What is the function of an operating system?", [
    "Manage hardware and software resources",
    "Process data",
    "Connect to the internet",
    "Compile programs"
  ]),
  QuizQuestion("What is the full form of HTTP?", [
    "HyperText Transfer Protocol",
    "HyperText Transfer Process",
    "HighText Transfer Protocol",
    "HighText Transfer Process"
  ]),
  QuizQuestion("What does SQL stand for?", [
    "Structured Query Language",
    "Structured Question Language",
    "Sequential Query Language",
    "Simple Query Language"
  ]),
  QuizQuestion("What is the primary purpose of DNS?", [
    "Translate domain names to IP addresses",
    "Secure data transmission",
    "Store website data",
    "Analyze network traffic"
  ]),
  QuizQuestion(
      "Which of the following is an example of a database management system?",
      ["MySQL", "HTML", "TCP/IP", "DNS"]),
  QuizQuestion("What does API stand for?", [
    "Application Programming Interface",
    "Application Performance Interface",
    "Application Process Interface",
    "Application Protocol Interface"
  ]),
  QuizQuestion("What is the main purpose of a firewall?", [
    "Monitor and control incoming and outgoing network traffic",
    "Encrypt data",
    "Translate IP addresses",
    "Backup data"
  ]),
  QuizQuestion(
      "Which programming language is primarily used for web development?",
      ["JavaScript", "C++", "Java", "Python"]),
  QuizQuestion("What does HTML stand for?", [
    "HyperText Markup Language",
    "HyperText Markup Link",
    "HighText Markup Language",
    "HyperText Markdown Language"
  ]),
  QuizQuestion("What is the main function of a router?", [
    "Forward data packets between computer networks",
    "Store data",
    "Encrypt data",
    "Manage user permissions"
  ]),
  QuizQuestion("Which of the following is a NoSQL database?",
      ["MongoDB", "MySQL", "PostgreSQL", "Oracle"]),
  QuizQuestion("What is the purpose of a compiler?", [
    "Translate source code into machine code",
    "Interpret code line by line",
    "Run software applications",
    "Manage computer hardware"
  ]),
  QuizQuestion("Which of the following is an operating system?",
      ["Linux", "HTML", "SQL", "Apache"]),
  QuizQuestion("What is the main characteristic of a peer-to-peer network?", [
    "All nodes have equal privileges",
    "Central server manages traffic",
    "All data is encrypted",
    "It uses satellite communication"
  ]),
  QuizQuestion("What does CSS stand for?", [
    "Cascading Style Sheets",
    "Cascading Style Scripts",
    "Central Style Sheets",
    "Coded Style Sheets"
  ]),
  QuizQuestion("What is the primary use of the Python programming language?", [
    "General-purpose programming",
    "System programming",
    "Web development",
    "Game development"
  ]),
  QuizQuestion("Which of the following is a version control system?",
      ["Git", "HTTP", "SMTP", "SQL"]),
  QuizQuestion("What is the full form of USB?", [
    "Universal Serial Bus",
    "Universal System Bus",
    "Universal Serial Block",
    "Universal System Block"
  ]),
  QuizQuestion("Which data structure uses FIFO (First In, First Out)?",
      ["Queue", "Stack", "Array", "Tree"]),
  QuizQuestion("What is the main purpose of a database index?", [
    "Improve query performance",
    "Store data",
    "Backup data",
    "Encrypt data"
  ]),
  QuizQuestion("Which of the following is a cloud computing platform?",
      ["Amazon Web Services", "Windows", "Linux", "MySQL"]),
  QuizQuestion("What does XML stand for?", [
    "eXtensible Markup Language",
    "eXtra Markup Language",
    "eXtra Multi Language",
    "eXtensible Multi Language"
  ]),
  QuizQuestion(
      "What is the main advantage of using a linked list over an array?", [
    "Dynamic size",
    "Faster access time",
    "Less memory usage",
    "Fixed size"
  ]),
  QuizQuestion("What does IoT stand for?", [
    "Internet of Things",
    "Internet of Technology",
    "Information of Things",
    "Information of Technology"
  ]),
  QuizQuestion(
      "Which of the following is an example of an interpreted language?",
      ["Python", "C", "C++", "Java"]),
  QuizQuestion("What is the primary function of a web server?", [
    "Serve web pages to clients",
    "Store files",
    "Encrypt data",
    "Manage databases"
  ]),
  QuizQuestion("What does JSON stand for?", [
    "JavaScript Object Notation",
    "JavaScript Object Network",
    "JavaScript Online Notation",
    "JavaScript Online Network"
  ]),
  QuizQuestion("Which of the following is a type of malware?",
      ["Virus", "Compiler", "Router", "Database"]),
  QuizQuestion("What is the main purpose of a DNS server?", [
    "Translate domain names to IP addresses",
    "Encrypt data",
    "Store web pages",
    "Route network traffic"
  ]),
  QuizQuestion("Which data structure is used to implement recursion?",
      ["Stack", "Queue", "Array", "Tree"]),
  QuizQuestion("What does GUI stand for?", [
    "Graphical User Interface",
    "General User Interface",
    "Global User Interface",
    "Graphical Unified Interface"
  ]),
  QuizQuestion("Which of the following is a machine learning algorithm?",
      ["Decision Tree", "Binary Search", "Bubble Sort", "Quick Sort"]),
  QuizQuestion("What is the primary use of the R programming language?", [
    "Statistical computing and graphics",
    "System programming",
    "Web development",
    "Game development"
  ]),
  QuizQuestion("What does LAN stand for?", [
    "Local Area Network",
    "Large Area Network",
    "Local Access Network",
    "Large Access Network"
  ]),
  QuizQuestion("Which of the following is a high-level programming language?",
      ["Python", "Assembly", "Machine Code", "Binary"]),
  QuizQuestion("What is the main purpose of a cache memory?", [
    "Speed up access to frequently used data",
    "Store data permanently",
    "Backup data",
    "Encrypt data"
  ]),
  QuizQuestion("What does FTP stand for?", [
    "File Transfer Protocol",
    "File Transfer Process",
    "File Transfer Program",
    "File Transfer Platform"
  ]),
  QuizQuestion("Which of the following is a characteristic of big data?", [
    "Volume, Velocity, Variety",
    "Small size, Slow speed, Uniformity",
    "Single source, Structured, Static",
    "Local, Limited, Linear"
  ]),
  QuizQuestion("What is the main use of a VPN?", [
    "Securely connect to a remote network",
    "Speed up internet connection",
    "Store data securely",
    "Analyze network traffic"
  ]),
  QuizQuestion("What does CLI stand for?", [
    "Command Line Interface",
    "Control Line Interface",
    "Command Link Interface",
    "Control Link Interface"
  ]),
  QuizQuestion("Which of the following is a binary tree?", [
    "A tree with at most two children per node",
    "A tree with at most three children per node",
    "A tree with at most one child per node",
    "A tree with no children per node"
  ]),
  QuizQuestion("What is the main function of an interpreter?", [
    "Translate and execute code line by line",
    "Compile code into machine language",
    "Manage computer hardware",
    "Store data"
  ]),
  QuizQuestion("What does SMTP stand for?", [
    "Simple Mail Transfer Protocol",
    "Simple Mail Transfer Process",
    "Simple Mail Transfer Program",
    "Simple Mail Transfer Platform"
  ]),
  QuizQuestion(
      "Which of the following is a key characteristic of an object-oriented programming language?",
      ["Encapsulation", "Recursion", "Iteration", "Concurrency"]),
];

const List<QuizQuestion> gkQuizQuestions = [
  QuizQuestion(
      "What is the capital of France?", ["Paris", "Berlin", "Madrid", "Rome"]),
  QuizQuestion("Who wrote 'Romeo and Juliet'?",
      ["William Shakespeare", "Charles Dickens", "Mark Twain", "Jane Austen"]),
  QuizQuestion("What is the largest planet in our solar system?",
      ["Jupiter", "Saturn", "Mars", "Earth"]),
  QuizQuestion("Which element has the chemical symbol 'O'?",
      ["Oxygen", "Gold", "Silver", "Iron"]),
  QuizQuestion("Who was the first President of the United States?", [
    "George Washington",
    "Thomas Jefferson",
    "Abraham Lincoln",
    "John Adams"
  ]),
  QuizQuestion("What is the longest river in the world?",
      ["Nile", "Amazon", "Yangtze", "Mississippi"]),
  QuizQuestion("Which planet is known as the Red Planet?",
      ["Mars", "Venus", "Jupiter", "Saturn"]),
  QuizQuestion("Who painted the Mona Lisa?", [
    "Leonardo da Vinci",
    "Vincent van Gogh",
    "Pablo Picasso",
    "Claude Monet"
  ]),
  QuizQuestion("What is the smallest prime number?", ["2", "1", "3", "5"]),
  QuizQuestion("Who is the author of 'Harry Potter' series?",
      ["J.K. Rowling", "J.R.R. Tolkien", "George R.R. Martin", "Stephen King"]),
  QuizQuestion("Which country is known as the Land of the Rising Sun?",
      ["Japan", "China", "South Korea", "Thailand"]),
  QuizQuestion("What is the hardest natural substance on Earth?",
      ["Diamond", "Gold", "Iron", "Quartz"]),
  QuizQuestion("Who was the first man to walk on the moon?",
      ["Neil Armstrong", "Buzz Aldrin", "Michael Collins", "Yuri Gagarin"]),
  QuizQuestion(
      "What is the currency of Japan?", ["Yen", "Won", "Yuan", "Dollar"]),
  QuizQuestion("What is the largest ocean on Earth?",
      ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]),
  QuizQuestion("Who is known as the Father of Computers?",
      ["Charles Babbage", "Alan Turing", "Bill Gates", "Steve Jobs"]),
  QuizQuestion("Which continent is the Sahara Desert located on?",
      ["Africa", "Asia", "Australia", "South America"]),
  QuizQuestion(
      "What is the chemical symbol for gold?", ["Au", "Ag", "Fe", "Pb"]),
  QuizQuestion("Which language has the most native speakers?",
      ["Mandarin Chinese", "Spanish", "English", "Hindi"]),
  QuizQuestion("Who discovered penicillin?",
      ["Alexander Fleming", "Marie Curie", "Isaac Newton", "Albert Einstein"]),
  QuizQuestion("Which planet is closest to the sun?",
      ["Mercury", "Venus", "Earth", "Mars"]),
  QuizQuestion("Who wrote 'Pride and Prejudice'?",
      ["Jane Austen", "Emily Brontë", "Charlotte Brontë", "Louisa May Alcott"]),
  QuizQuestion("What is the capital of Australia?",
      ["Canberra", "Sydney", "Melbourne", "Brisbane"]),
  QuizQuestion("What is the largest mammal in the world?",
      ["Blue Whale", "Elephant", "Giraffe", "Hippopotamus"]),
  QuizQuestion("Which country hosted the 2016 Summer Olympics?",
      ["Brazil", "China", "UK", "Russia"]),
  QuizQuestion("Who is the author of 'The Great Gatsby'?", [
    "F. Scott Fitzgerald",
    "Ernest Hemingway",
    "Mark Twain",
    "John Steinbeck"
  ]),
  QuizQuestion("What is the smallest country in the world?",
      ["Vatican City", "Monaco", "San Marino", "Liechtenstein"]),
  QuizQuestion("Which is the longest mountain range in the world?",
      ["Andes", "Rocky Mountains", "Himalayas", "Alps"]),
  QuizQuestion("What is the main ingredient in traditional Japanese miso soup?",
      ["Soybean paste", "Rice", "Seaweed", "Fish"]),
  QuizQuestion("Who painted the ceiling of the Sistine Chapel?",
      ["Michelangelo", "Leonardo da Vinci", "Raphael", "Donatello"]),
  QuizQuestion("Which country is famous for its tulips and windmills?",
      ["Netherlands", "Belgium", "France", "Germany"]),
  QuizQuestion("What is the largest bone in the human body?",
      ["Femur", "Tibia", "Humerus", "Skull"]),
  QuizQuestion("Who invented the telephone?", [
    "Alexander Graham Bell",
    "Thomas Edison",
    "Nikola Tesla",
    "Guglielmo Marconi"
  ]),
  QuizQuestion("Which element has the chemical symbol 'Na'?",
      ["Sodium", "Nitrogen", "Neon", "Nickel"]),
  QuizQuestion("What is the name of the longest river in South America?",
      ["Amazon", "Paraná", "Orinoco", "São Francisco"]),
  QuizQuestion("Who was the first woman to win a Nobel Prize?",
      ["Marie Curie", "Rosalind Franklin", "Ada Lovelace", "Lise Meitner"]),
  QuizQuestion("Which planet is known as the Earth's Twin?",
      ["Venus", "Mars", "Jupiter", "Saturn"]),
  QuizQuestion("What is the capital of Canada?",
      ["Ottawa", "Toronto", "Vancouver", "Montreal"]),
  QuizQuestion("Who wrote the play 'Hamlet'?", [
    "William Shakespeare",
    "Christopher Marlowe",
    "Ben Jonson",
    "Thomas Kyd"
  ]),
  QuizQuestion("Which element has the highest melting point?",
      ["Tungsten", "Iron", "Gold", "Platinum"]),
  QuizQuestion("What is the national sport of Japan?",
      ["Sumo wrestling", "Judo", "Karate", "Baseball"]),
  QuizQuestion("Who developed the theory of relativity?",
      ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Niels Bohr"]),
  QuizQuestion("What is the largest island in the world?",
      ["Greenland", "New Guinea", "Borneo", "Madagascar"]),
  QuizQuestion("What is the main ingredient in guacamole?",
      ["Avocado", "Tomato", "Onion", "Lemon"]),
  QuizQuestion("Who was the first person to reach the South Pole?", [
    "Roald Amundsen",
    "Robert Falcon Scott",
    "Ernest Shackleton",
    "James Clark Ross"
  ]),
  QuizQuestion("Which country is known as the Land of the Pharaohs?",
      ["Egypt", "Greece", "Italy", "Turkey"]),
  QuizQuestion(
      "What is the chemical symbol for iron?", ["Fe", "Ir", "In", "I"]),
  QuizQuestion("Which city is known as the Big Apple?",
      ["New York City", "Los Angeles", "Chicago", "San Francisco"]),
  QuizQuestion("Who is the author of '1984'?",
      ["George Orwell", "Aldous Huxley", "Ray Bradbury", "Philip K. Dick"]),
];
