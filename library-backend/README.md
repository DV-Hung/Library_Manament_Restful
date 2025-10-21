# Library-Management (Quản lý Thư viện)

[![Java 17](https://img.shields.io/badge/Java-17-blue.svg)](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x.x-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![Maven](https://img.shields.io/badge/Maven-3.8+-red.svg)](https://maven.apache.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Đây là một project backend cung cấp các API cho ứng dụng quản lý thư viện, được xây dựng bằng Spring Boot và Java 17.

## Giới thiệu

Dự án này được xây dựng nhằm mục đích hiện đại hóa và tối ưu hóa quy trình quản lý thư viện. Bằng cách cung cấp các API mạnh mẽ, hệ thống giúp giảm bớt công sức quản lý thủ công, tự động hóa các tác vụ và tăng năng suất làm việc cho nhân viên thư viện.

### Các tính năng chính

* 📚 **Quản lý Sách:** Thêm, xóa, sửa, tìm kiếm thông tin sách.
* 👤 **Quản lý Tác giả:** Quản lý thông tin chi tiết về các tác giả.
* 🔄 **Quản lý Mượn/Trả:** Xử lý logic nghiệp vụ cho việc mượn và trả sách, theo dõi lịch sử mượn.
* 📊 **Thống kê:** Cung cấp các số liệu thống kê về sách (sách được mượn nhiều nhất, sách quá hạn, v.v.).

## Công nghệ sử dụng

* **Ngôn ngữ:** [Java 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
* **Framework:** [Spring Boot](https://spring.io/projects/spring-boot)
* **Quản lý build:** [Maven](https://maven.apache.org/)
* **Cơ sở dữ liệu:** [MySQL]
* **Phụ thuộc chính:**
    * `spring-boot-starter-web` (cho các API RESTful)
    * `spring-boot-starter-data-jpa` (cho việc tương tác CSDL)
    * `spring-boot-starter-validation` (cho việc xác thực dữ liệu)
    * `spring-boot-starter-security` (cho việc bảo mật hệ thống và xác thực người dùng)
## Bắt đầu (Getting Started)

Hướng dẫn cài đặt và chạy dự án này trên máy cục bộ của bạn.

### Yêu cầu

* [JDK 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
* [Maven](https://maven.apache.org/download.cgi)
* [IntelliJ IDEA](https://www.jetbrains.com/idea/), [VS Code](https://code.visualstudio.com/) với Java Extension Pack)
* [MySQL] (https://www.oracle.com/mysql/technologies/mysql-enterprise-edition-downloads.html)

### Cài đặt

1.  **Clone repository**
    ```sh
    git clone [[https://github.com/DV-Hung/Library_Manament_Restful.git]
    ```

2.  **Đi tới thư mục dự án**
    ```sh
    cd Library-Management
    ```

3.  **Cấu hình biến môi trường**
    * Mở file `application.properties` trong thư mục `src/main/resources`.
    * Cập nhật thông tin kết nối cơ sở dữ liệu của bạn:
        ```properties
        spring.datasource.url=jdbc:mysql://localhost:3306/[ten_database_cua_ban]
        spring.datasource.username=[username_csdl]
        spring.datasource.password=[password_csdl]
        
        ```

4.  **Build dự án**
    Maven sẽ tự động tải các dependencies, nhưng bạn có thể chạy lệnh sau để build:
    ```sh
    mvn clean install
    ```

## Cách sử dụng

Sau khi cài đặt xong, bạn có thể khởi chạy ứng dụng bằng lệnh sau:

```sh
mvn spring-boot:run