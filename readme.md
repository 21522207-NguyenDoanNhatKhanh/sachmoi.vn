# sachmoi.vn
# Đây là đồ án môn IE104 của nhóm 13

## Clone code

Để clone code về từ git repo, sử dụng lệnh:

```shell
git clone https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn.git
```

### Run web
Sau khi clone code về thành công, cài một phần mềm cho phép giả lập môi trường server hosting như XAMMP, Laragon

Trong localhost ` http://localhost:88/phpmyadmin/ ` hoặc `http://localhost/phpmyadmin/`,
tạo một database tên `sachmoi_db` và chuẩn `utf8mb4_unicode_ci`
![image](https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn/assets/147527094/a11a40b3-3a86-4ab3-a3ec-19ed7bf408d3)

Vào phần import trong 'sachmoi_db'. Kết quả được như hình
![image](https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn/assets/147527094/42a69d74-870a-4241-884e-e1b140f2177f)


Thêm file `sachmoi_db.sql` đã clone về vào database
![image](https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn/assets/147527094/7b7afb6b-e794-4a2b-bed8-4d6000dcd984)

Kéo xuống cuối trang và chọn Import. Kết quả sẽ được như hình
![image](https://github.com/21522207-NguyenDoanNhatKhanh/sachmoi.vn/assets/147527094/0150bcb8-f46e-46f8-bc68-da284de06bdf)


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

