# sachmoi.vn
# Đây là đồ án môn IE104 của nhóm 13

## Clone code

Để clone code về từ git repo, sử dụng lệnh command:

```shell
git clone https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn.git
```

### Run web
Sau khi clone code về thành công, cài một phần mềm cho phép giả lập môi trường server hosting như XAMMP, Laragon

Trong localhost ` http://localhost:88/phpmyadmin/ ` hoặc `http://localhost/phpmyadmin/`,
tạo một database tên `sachmoi_db` và chuẩn `utf8mb3_unicode_ci`
![image](https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn/assets/129664500/1dc8fbc9-2e5e-49a7-98f7-95bf39936cd1)

Thêm file `sachmoi_db.sql` đã clone về vào database
![image](https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn/assets/129664500/ec8500d2-2b15-4eb6-93bc-3e0578c05ab6)

Chạy trang web bằng đường dẫn ` http://localhost:88/sachmoi.vn/ ` hoặc `http://localhost/sachmoi.vn/`

## Folder Structure
![Folder structure](https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn/assets/129664500/609ade03-4f73-4988-b463-e2a0e0df3b44)

- admin
    - Chứa các file php cho trang admin
- book_image
    - Chứa các file hình ảnh về sách
- cart
    - Chứa các file php chức năng thêm vào giỏ hàng
- images
    - Chứa các file hình ảnh khác
- includes
    - Chứa các file php dùng chung cho toàn trang
- js
    - Chứa các file JavaScript
- style
    - Chứa các file CSS
- sachmoi_db.sql
    - Database của trang web
- Các file php của MultiPage

