# Practica_3

## Overview
Practica_3 is a web application project that integrates both frontend and backend technologies. The frontend is primarily built using React, while the backend uses Django. The application provides various functionalities including user authentication, product management, and data visualization.

## Main Functionalities

### Frontend (React)
- **Routing**: Utilizes React Router for navigating between different views.
- **Components**: Includes components like `Header`, `Footer`, `Formulario`, and `Resultados`.
- **Views**: Contains views for `Home`, `About`, `Shop`, `Login`, `Register`, and more.
- **Layouts**: Uses `MainWrapper` for layout management.
- **CRUD Operations**: Features for creating, updating, and deleting products.

### Backend (Django)
- **Administrative Tasks**: Managed through `manage.py`.
- **URL Routing**: Configured in `urls.py` for different API endpoints.
- **Proxy Setup**: Configured in `setupProxy.js` for API redirection.

## Recent Changes
- Comparador y corrección de librería JWT
- Merge branch `comparador`
- Símbolos finales del comparador

## Prerequisites and Installation

### Backend (Django)
1. Ensure Python is installed.
2. Install dependencies using: pip install -r requirements.txt
3. Run the development server using: python manage.py runserver

### Frontend (React)
1. Ensure Node.js is installed.
-  Install dependencies using: npm install
2. Start the development server using: npm start

# Usage Instructions

- Navigate to the home page to explore various functionalities.
- Use the provided routes to access different parts of the application:

  - **Home**: `/`
  - **About**: `/about`
  - **Shop**: `/shop`
  - **Login**: `/views/login`
  - **Register**: `/views/register`
  - **Private**: `/private`

# Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.
