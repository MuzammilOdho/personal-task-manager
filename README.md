# ✅ Personal Task Manager

A modern, web-based task management system built with **Java, Spring MVC, JSP, Hibernate**, and **PostgreSQL**. This project allows users to register, log in, and manage their daily tasks efficiently — add, update, mark as complete, or delete tasks.

---

## 🌟 Features

- 🔐 **User Authentication** (Signup/Login/Logout)
- 📝 **CRUD Operations** for Tasks (Create, Read, Update, Delete)
- 📅 Track creation date & status (complete/incomplete)
- 🎨 Clean and modern UI using **JSP + CSS**
- 📦 Session-based login state
- 🔄 Friendly error handling and validations

---

## 💻 Tech Stack

| Layer              | Technology                  |
|--------------------|-----------------------------|
| Backend            | Java 17                     |
| Framework          | Spring Core, Spring MVC     |
| ORM                | Hibernate (JPA)             |
| Database           | PostgreSQL                  |
| View Technology    | JSP + JSTL                  |
| Build Tool         | Maven                       |
| Server             | Apache Tomcat 11            |

---

## 📁 Project Structure
```
src/
└── main/
├── java/
│ └── com.muzammil.taskmanager/
│ ├── controller/
│ ├── model/
│ ├── service/
│ └── dao/
├── resources/
│ └── application.properties
└── webapp/
├── WEB-INF/
│ ├── views/
│ │ ├── login.jsp
│ │ ├── signup.jsp
│ │ ├── task-list.jsp
│ │ ├── add-task.jsp
│ │ └── edit-task.jsp
│ └── web.xml

---
```

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/personal-task-manager.git
cd personal-task-manager
```
### 2. Configure Database
 
  Create a PostgreSQL database named taskmanager
  Update the credentials in application.properties:
 ```bash
  spring.datasource.url=jdbc:postgresql://localhost:5432/taskmanager
  spring.datasource.username=your_user
  spring.datasource.password=your_password
```
### 3. Build and Run
Using an IDE: Run the project via Tomcat server
Or using Maven:

```bash
  mvn clean install
```

### 🤝 Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you'd like to change.

📃 License
This project is open-source and available under the MIT License.

