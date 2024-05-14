-- Question 2: lấy ra tất cả các phòng ban
-- Question 3: lấy ra id của phòng ban "Sale"
-- Question 4: lấy ra thông tin account có full name dài nhất
select *
from account
order by char_length(full_name) desc
limit 1;

-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng
-- ban có id= 3
select * 
from account
where department_id = 3
order by char_length(full_name) desc
limit 1;

-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019
-- Question 7: Lấy ra ID của question có >= 4 câu trả lời
select question_id
from answer
group by question_id
having count(answer_id) >= 4;

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo
-- trước ngày
-- 20/12/2019
-- Question 9: Lấy ra 5 group được tạo gần đây nhất
select *
from `group`
order by created_date desc
limit 5;

-- Question 10: Đếm số nhân viên thuộc department có id = 2
select count(account_id)
from account
where department_id = 2;

-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc
-- bằng chữ "o"
SELECT *
FROM account
WHERE substring_index(full_name, " ", -1) like "D%o";

select substring_index("Tran Tien Quyet", " ", 1); -- Số dương từ bên phải qua, số âm từ bên trái qua

-- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019
delete
from exam
where created_date < "2019-12-20";

-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
delete
from question
where content like "câu hỏi%";

-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá
-- Lộc" và email thành loc.nguyenba@vti.com.vn
update account
set full_name = "Nguyễn Bá Lộc", email = "loc.nguyenba@vti.com.vn"
where account_id = 5;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
update group_account
set group_id = 4
where account_id = 5;