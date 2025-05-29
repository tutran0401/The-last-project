# 🏢 Ứng Dụng Quản Lý Tòa Nhà

## 📝 Tổng Quan
Đây là một ứng dụng web Spring Boot dành cho quản lý tòa nhà. Ứng dụng cung cấp các chức năng để quản lý tòa nhà với giao diện quản trị viên cho các thao tác như liệt kê, chỉnh sửa và các tác vụ quản lý khác.

---

## 🔧 Công Nghệ Sử Dụng
- Java 8
- Spring Boot
- Maven
- JSP (JavaServer Pages)
- Cơ sở dữ liệu SQL (MySQL hoặc PostgreSQL)
- DisplayTag (để hiển thị bảng dữ liệu)

---

## 📁 Cấu Trúc Dự Án

```
├── src/
│   ├── main/
│   │   ├── java/         # Mã nguồn Java
│   │   ├── resources/    # Tệp cấu hình
│   │   └── webapp/       # Tài nguyên web và giao diện JSP
│   │       └── WEB-INF/
│   │           └── views/
│   │               ├── admin/       # Giao diện quản trị
│   │               └── web/         # Giao diện người dùng
├── database/
│   └── insert_database.sql  # Script khởi tạo cơ sở dữ liệu
└── pom.xml                  # Cấu hình Maven
```

---

## ⚙️ Yêu Cầu Hệ Thống
- Java JDK 1.8
- Maven
- Máy chủ cơ sở dữ liệu: MySQL hoặc PostgreSQL

---

## 🚀 Hướng Dẫn Cài Đặt

### 1. Cài Đặt Cơ Sở Dữ Liệu
- Tạo cơ sở dữ liệu cho ứng dụng
- Chạy script `insert_database.sql` để khởi tạo cấu trúc và dữ liệu

### 2. Cấu Hình Ứng Dụng
- Cấu hình kết nối cơ sở dữ liệu trong `application.properties`

### 3. Xây Dựng và Chạy Ứng Dụng

**Xây dựng ứng dụng:**
```bash
mvn clean install
```

**Chạy ứng dụng:**
```bash
mvn spring-boot:run
```

Ứng dụng sẽ được khởi chạy tại: [http://localhost:8080](http://localhost:8080)

---

## 🔐 Giao Diện Quản Trị

Giao diện quản trị bao gồm:
- Danh sách người dùng
- Chỉnh sửa thông tin người dùng
- Quản lý hồ sơ cá nhân
- Các chức năng quản lý tòa nhà khác

---

## 👤 Giao Diện Người Dùng

Giao diện người dùng bao gồm:
- Trang chủ
- Trang giới thiệu về dự án SkyLand
- Trang tin tức
- Trang liên hệ
- Danh sách bất động sản
