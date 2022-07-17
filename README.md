# Testable

Dịch nôm na là viết code có thể test được. Vậy thì tại sao lại cần “Viết code có thể test được” nhỉ :D

Có một vài lí do sau:

- Giảm bug, dễ bảo trì, đảm bảo chất lượng dự án: nếu code của bạn không dễ dàng test thì nó cũng không dễ dàng bảo trì, tác giả Clean Code nói rằng: “nếu code của bạn không thể test thì có nghĩa code của bạn là legacy code” :D
- Hiểu được requirement, business của app tốt hơn
- Tránh chủ quan: nguyên nhân lớn gây bug là do không tưởng tượng ra hết các kịch bản (scenarios) để test thử trước khi đem cho Tester.

Tip viết code “testable”

- Sử dụng Dependency Injection: cho phép các class nhận được tất cả các phụ thuộc bên ngoài của chúng trong các hàm khởi tạo của chúng. Tham khảo: https://viblo.asia/p/lam-cho-ma-swift-cua-ban-de-viet-test-hon-voi-dependency-injection-va-protocols-Qbq5QM2L5D8
- Hạn chế sử dụng function private call function private, static, final: Do bản chất của unit test là khi test hàm A mà trong A có sử dụng các class bên ngoài thì ta sẽ cô lập và mock các class đó để trả về các giá trị ta mong muốn => private thì không mock được :D
- Một function chỉ nên tối đa 30-40 dòng: dài quá khó đọc huống chi là test nhỉ :D
- Luôn return value cho function: một function nên có kết quả trả về để ta có thể viết unit test 1 cách chính xác hay đúng nghĩa hơn thay vì không trả về gì
- Dùng MVP sẽ dễ test hơn MVC truyền thống: Thường chúng ta hay theo MVC kiểu controller sẽ gọi trực tiếp đến model, như thế chỉ xử lý được những case đơn giản nếu logic phức tạp hơn thì ta thấy code trong controller sẽ phình ra và khó kiểm soát => dùng MVP dễ kiểm soát và dễ viết test hơn.

