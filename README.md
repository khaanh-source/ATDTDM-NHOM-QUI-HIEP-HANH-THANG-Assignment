**BÁO CÁO**

**AN TOÀN ĐIỆN TOÁN ĐÁM MÂY**

> **Sinh viên thực hiện:**
>
> **NGUYỄN VĂN HIỆP**
>
> **PHẠM PHÚ QUÍ**
>
> **ĐOÀN THẾ HẠNH**
>
> **ĐỖ HUY THẮNG**
>
> **Lớp: AT13M**

*Thành phố Hồ Chí Minh, tháng 12 năm 2020*

----

[1. Xây dựng một database](#1)
[2. Xây dựng 1 ứng dụng web kết nối với database](#2)
[3. Up Code lên github](#3)

----

<a name ="1"> </a>
**Yêu cầu 1: Xây dựng một database**

Truy cập trang: <https://my.vertabelo.com/>

Click sign up

![](media/image2.png)

Điền thông tin -\> create account

![](media/image3.png)

Chọn chế độ

![](media/image4.png)

Hoàn tất

Click create new model để tạo database
![](media/image5.png)

![](media/image6.png)

Đặt tên, cấu hình cho database -\> start modeling

![](media/image7.png)

Hoàn thành: giao diện chính

![](media/image8.png)

Tiến hành tạo bảng :

Click add table

![](media/image9.png)


Hoàn tất

![](media/image10.png)

Click vào bên phải để đặt tên và thêm cột cho bảng

Đặt tên bảng

Click vào + add column để thêm cột cho bảng

Click PK để đặt khóa chính cho bảng, click N để cho phép cột được NULL

![](media/image11.png)


Tạo quan hệ :

Click references và click biểu tượng trên thanh công cụ

![](media/image12.png)

Click chuột vào bảng KHACHHANG và rê chuột sang bảng HOADON

![](media/image13.png)


Click vào sợi quan hệ để chỉnh sửa quan hệ

![](media/image14.png)

Xóa dòng KHACHHANG_makh được tự tạo

![](media/image15.png)

Click vào dây quan hệ để tạo quan hệ mới

Chọn makh ở 2 bảng -\> add

![](media/image16.png)

Làm tương tự cho các bảng còn lại

Hoàn thành:

![](media/image17.png)

Xuất database vừa tạo

Click vào biều tượng SQL -\> generate -\> download

![](media/image18.png)

![](media/image19.png)

Mở file vừa download lên bằng MySQL WorkBench 8.0 CE

![](media/image20.png)

Chúng ta sẽ có đoạn script để tạo database đã thao tác trên vertabelo

![](media/image21.png)

Thêm

CREATE DATABASE NHOMQHHT;

Use NHOMQHHT

Ctrl + Shift + Enter -\> đã tạo thành công database

![](media/image22.png)

Tiến hành nhập dữ liệu cho databse :

![](media/image23.png)

KIỂM TRA:

![](media/image24.png)

![](media/image25.png)

<a name ="2"> </a>
**Yêu cầu 2. Xây dựng 1 ứng dụng web kết nối với database**\
Ứng dụng NodeJS -- MySQL

![](media/image26.png)

Code:

![](media/image27.png)

![](media/image28.png)

![](media/image29.png)

![](media/image30.png)

Giao diện web

![](media/image31.png)

<a name ="3"> </a>
**Yêu cầu 3: Up Code lên github:**

Tạo Repository

![](media/image32.png)

![](media/image33.png)

Khởi tạo git:

![](media/image34.png)

Add remote repo:

![](media/image35.png)

Add các file có trong thư mục chuẩn bị đẩy lên git:

![](media/image36.png)


Đưa message để ghi chú commit:

![](media/image37.png)


Push code lên git:

![](media/image38.png)

Kiểm tra

![](media/image39.png)
