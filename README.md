# 🎓 SRMH - Student Real-time Monitoring Hub

Hệ thống theo dõi và quản lý trạng thái sinh viên theo thời gian thực cho Giảng viên và Cán bộ Công tác Sinh viên (CTSV).

## ✨ Tính năng chính

### 👥 Quản lý người dùng
- **3 vai trò**: Admin, Giảng viên (GV), CTSV
- Đăng nhập bằng mã truy cập
- Phân quyền rõ ràng theo vai trò

### 📊 Quản lý sinh viên
- Hiển thị danh sách sinh viên với 3 trạng thái:
  - 🟢 **Ổn định** - Sinh viên học tập tốt
  - 🟡 **Theo dõi** - Cần quan tâm thêm
  - 🔴 **Cảnh báo** - Cần can thiệp ngay
- Tìm kiếm theo tên, MSSV, lớp
- Lọc theo trạng thái
- Sắp xếp theo thời gian cập nhật gần nhất
- Hiển thị feedback gần nhất ngay trên card

### 💬 Hệ thống Feedback
- GV và CTSV có thể gửi feedback cho sinh viên
- Hiển thị lịch sử feedback đầy đủ
- Ghi nhận người gửi feedback (GV/CTSV)
- Timeline feedback theo thời gian

### 🔄 Cập nhật trạng thái
- GV và CTSV đều có quyền cập nhật trạng thái sinh viên
- Tự động ghi log khi thay đổi trạng thái
- Cập nhật thời gian real-time

### 📄 Xuất báo cáo HTML
- **Báo cáo tổng quan**: Thống kê trạng thái toàn bộ sinh viên
- **Báo cáo theo lớp**: Phân tích từng lớp học
- **Báo cáo chi tiết**: Danh sách đầy đủ sinh viên + feedback
- **Báo cáo riêng sinh viên**: Lịch sử đầy đủ của từng sinh viên
- Có thể in hoặc lưu PDF

### 📥 Import dữ liệu (Admin)
- Import danh sách sinh viên từ Excel/CSV
- Tự động mapping cột dữ liệu
- Hỗ trợ nhiều định dạng file

## 🚀 Cài đặt & Sử dụng

### Yêu cầu
- Trình duyệt web hiện đại (Chrome, Safari, Firefox, Edge)
- Kết nối internet (để kết nối Supabase)

### Cách chạy
1. Clone repository này
2. Mở file `index.html` bằng trình duyệt
3. Hoặc chạy local server:
   ```bash
   chmod +x start-server.sh
   ./start-server.sh
   ```
4. Truy cập: `http://localhost:8000`

### Đăng nhập
Sử dụng các mã truy cập sau:
- **Admin**: `ADMIN2026`
- **Giảng viên**: `GV2026`
- **CTSV**: `CTSV2026`

## 🗄️ Cấu trúc Database (Supabase)

### Bảng `students`
```sql
- id (uuid, primary key)
- mssv (text, unique)
- ho_ten (text)
- lop (text)
- email (text)
- status (text) - 'green', 'yellow', 'red'
- created_at (timestamp)
- updated_at (timestamp)
```

### Bảng `feedbacks`
```sql
- id (uuid, primary key)
- student_id (uuid, foreign key -> students.id)
- role (text) - 'GV', 'CTSV', 'SYSTEM'
- content (text)
- created_at (timestamp)
```

## 🛠️ Công nghệ sử dụng

- **Frontend**: HTML5, Tailwind CSS, Vanilla JavaScript
- **Backend**: Supabase (PostgreSQL)
- **Thư viện**: 
  - SheetJS (XLSX) - Import Excel
  - Supabase Client - Database operations

## 📱 Tính năng nổi bật

- ✅ **Real-time updates**: Cập nhật tức thì khi có thay đổi
- ✅ **Responsive design**: Hoạt động tốt trên mọi thiết bị
- ✅ **Offline-ready**: Có thể xem dữ liệu đã tải
- ✅ **Fast search**: Tìm kiếm nhanh chóng
- ✅ **Beautiful UI**: Giao diện hiện đại, dễ sử dụng
- ✅ **Export reports**: Xuất báo cáo chuyên nghiệp

## 📝 Hướng dẫn sử dụng

### Cho Giảng viên & CTSV:
1. Đăng nhập bằng mã truy cập
2. Xem danh sách sinh viên và trạng thái
3. Click vào sinh viên để xem chi tiết
4. Gửi feedback hoặc cập nhật trạng thái
5. Xuất báo cáo khi cần

### Cho Admin:
1. Đăng nhập bằng mã Admin
2. Import danh sách sinh viên từ Excel
3. Quản lý dữ liệu sinh viên

## 🔒 Bảo mật

- Row Level Security (RLS) được bật trên Supabase
- Phân quyền theo vai trò
- Không lưu mật khẩu (sử dụng access code)

## 📞 Liên hệ & Hỗ trợ

Nếu có vấn đề hoặc câu hỏi, vui lòng tạo issue trên GitHub.

## 📄 License

MIT License - Tự do sử dụng và chỉnh sửa.

---

**Phát triển bởi**: BTEC Team  
**Năm**: 2026  
**Version**: 1.0.0
