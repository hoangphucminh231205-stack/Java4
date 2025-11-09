# 🧩 Java 4 - SD20302 Project

Một dự án Java Web được phát triển bằng **Jakarta EE (Servlet + JSP)** theo mô hình **MVC**, có kết nối cơ sở dữ liệu thông qua **JPA (Hibernate)**.

---

## 🚀 Giới thiệu

Ứng dụng quản lý **sinh viên** gồm các chức năng:

- ✏️ Thêm, sửa, xóa sinh viên  
- 📋 Hiển thị danh sách sinh viên  
- 💾 Lưu trữ dữ liệu với JPA (persistence.xml)  
- 🌐 Giao diện JSP đơn giản, thân thiện

---

## 🧱 Công nghệ sử dụng

| Thành phần | Mô tả |
|-------------|-------|
| **Ngôn ngữ** | Java 17+ |
| **IDE** | IntelliJ IDEA / NetBeans / Eclipse |
| **Build tool** | Apache Maven |
| **Web server** | Apache Tomcat 10+ |
| **ORM** | JPA (Hibernate) |
| **Database** | MySQL / SQL Server |
| **Frontend** | JSP + Bootstrap 5 |

---

## ⚙️ Cấu trúc dự án
src/
└── main/
├── java/com/example/java4_sd20302/
│ ├── Controller/
│ │ └── StudentsServlet.java
│ ├── Repository/
│ │ └── StudentsRepository.java
│ ├── Service/
│ │ └── StudentService.java
│ └── entity/
│ └── Student.java
├── resources/META-INF/
│ ├── create.sql
│ └── persistence.xml
└── webapp/
├── index.jsp
├── WEB-INF/web.xml
└── views/
├── create.jsp
├── update.jsp
└── students.jsp

🧑‍💻 Tác giả
👤 Hoàng Phúc Minh
📚 FPT Polytechnic — Môn Java 4 (SD20302)
📅 Năm học: 2025
