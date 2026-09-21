# E-COMMERCE
# 🛒 E-Commerce Spring Boot

A production-oriented Java e-commerce web application built with Spring Boot, JSP, Spring Security, and Hibernate — featuring role-based access for admin and customer workflows.

## Highlights

- **Server-rendered e-commerce app** (JSP views)
- **Spring Security** authentication and role-based authorization
- **Custom Hibernate** SessionFactory configuration (non-Spring-Data JPA runtime)
- **MySQL-backed** persistence with DAO and service layers
- **Admin modules** for products, categories, and customer listing
- **User modules** for registration, login, profile management, and product browsing
- **Jenkins pipeline** file included for CI/CD bootstrap

## 🛠 Tech Stack

![Java](https://img.shields.io/badge/Java-11-orange)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-2.6.4-green)
![Spring Security](https://img.shields.io/badge/Spring_Security-5.x-brightgreen)
![Hibernate](https://img.shields.io/badge/Hibernate-ORM-grey)
![MySQL](https://img.shields.io/badge/MySQL-8.x-blue)
![Maven](https://img.shields.io/badge/Maven-Build-red)

- Java 11
- Spring Boot 2.6.4
- Spring MVC
- Spring Security
- Hibernate ORM (via `LocalSessionFactoryBean`)
- JSP + JSTL + Tomcat Jasper
- MySQL 8 connector
- Maven


## Database ER Diagram

Here is the Entity Relationship (ER) diagram for our e-commerce database:

![ER Diagram](ER_Diagram.png)

### Table Details

| Table | Description |
|-------|-------------|
| User | Stores user account information with UserId as primary key |
| Product | Contains product details (name, price, image, description) |
| Order | Holds order information (Order Id, quantity, total amount, shipping total) |
| Payment | Manages payment status for each order |
| Cart Item | Tracks items added to the shopping cart |
| Recommended Product | Stores product recommendations linked to users |


