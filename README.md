# Formula1_results

I. Mô tả quá trình thực hiện.
    1. Back-end và Data:
    - Thiết lập các cài đặt cơ bản cho một server.
    - Sử dụng cheerio để Crawl data từ website và lưu vào csdl mysql.
    - Tạo api res data theo các table drivers, teams, races và tìm kiếm.
        + Các chức năng lấy tất cả hoặc theo tên, theo năm.
        + Chức năng tìm kiếm từ data theo các trường drivers, teams, grand theo query 'LIKE   %or%'.
    2. Front-end:
    - Thiết lập các cài đặt cơ bản cho một giao diện người dùng.
    - Trang chính là bảng tổng hợp chi tiết kết quả của giải đấu, đội tham gia, và tay đua:
        + có hai ô lựa chọn để xem theo các năm và từng bảng tổng kết.
    - Tạo thanh tìm kiếm và component Results để trả về kết quả tìm được
    - Sử dụng redux lưu kết quả tìm kiếm khi người dùng nhấn vào từng kết quả để xem chi tiết.
    - Lấy value từ redux và tiến hành rest-api để trả về kêt quả chi tiết.
        + Data là ra tên một tay đua hoặc một đội sẽ trả ra biểu đồ chi tiết của data đó theo các năm.
        + Data là giải đấu sẽ trả ra bảng chi tiết của giải đấu đó theo năm.

II. Thực thi hệ thống.
    - Để tiện cho việc test app: xin hãy import file race_results.sql vào phần mềm mysql hoặc xampp để kết nối database dễ dàng.
    - Kiểm tra lại cổng kết nối ở file db.configs.ts trong thư mục back-end/src/configs.
    - Mở terminal ở thư mục server và client cài đặt các package cần thiết trước khi bắt đầu
