# Flutter Clean Architecture & Mock API Study

โปรเจกต์นี้จัดทำขึ้นเพื่อศึกษาการพัฒนาแอปพลิเคชันด้วย **Flutter** โดยใช้หลักการ **Clean Architecture** ร่วมกับการทำ **Mock API** เพื่อสร้างโครงสร้างที่ยืดหยุ่น แยกส่วนความรับผิดชอบ (Decoupling) และรองรับการขยายตัวในอนาคต

---

## Folder Structure (Clean Architecture)

โปรเจกต์นี้แบ่งโค้ดออกเป็น 3 Layer หลัก ตามหลักการ Separation of Concerns:



### 1. Presentation Layer
* **UI Widgets:** ส่วนของหน้าจอและการแสดงผล
* **State Management:** การจัดการสถานะของแอป (เช่น BLoC, Riverpod หรือ Provider) เพื่อส่งต่อข้อมูลไปยัง UI

### 2. Domain Layer (The Core)
* **Entities:** โครงสร้างข้อมูลหลัก (Plain Dart Objects)
* **Use Cases:** รวบรวม Business Logic หรือคำสั่งการทำงานต่างๆ ของแอป
* **Repositories (Interfaces):** กำหนดสัญญา (Contract) ว่าข้อมูลควรมีลักษณะอย่างไร โดยไม่สนใจแหล่งที่มา

### 3. Data Layer
* **Repositories (Implementation):** ส่วนที่ตัดสินใจว่าจะดึงข้อมูลจาก Mock, Local หรือ Remote
* **Data Sources:** การติดต่อกับแหล่งข้อมูลภายนอก (API/Database)
* **Models:** คลาสสำหรับจัดการข้อมูล (Data Transfer Objects) เช่น การทำ `fromJson` หรือ `toJson`

---

## Mock API Implementation

ในการพัฒนานี้มีการจำลองการเรียกใช้งาน API เพื่อให้สามารถพัฒนา UI และ Logic ได้โดยไม่ต้องรอ Backend จริง:

* **Mock Data Source:** สร้างคลาสที่ส่งคืนข้อมูลจำลอง (Dummy Data) ในรูปแบบ `Future`.
* **Simulated Delay:** ใส่การหน่วงเวลา (`Future.delayed`) เพื่อทดสอบสถานะ **Loading** ของแอป.
* **Error Handling:** จำลองสถานการณ์ Error เช่น `Exception` หรือข้อมูลว่าง เพื่อทดสอบความเสถียรของ UI ในทุกกรณี.

---

## Key Principles Used

* **S.O.L.I.D Principles:** เน้นการเขียน Code ให้ Class หนึ่งทำงานเพียงอย่างเดียว (Single Responsibility).
* **Dependency Injection (DI):** การส่งผ่าน Dependency เข้าไปใน Class ทำให้โค้ดไม่ยึดติดกัน ช่วยให้สลับระหว่าง Mock และ Production API ได้อย่างง่ายดาย.
* **Interface Abstraction:** ใช้ Abstraction เป็นตัวเชื่อมระหว่าง Layer ทำให้เราสามารถปรับเปลี่ยนรายละเอียดภายใน (Implementation) ได้โดยไม่กระทบส่วนอื่นของโปรเจกต์.
