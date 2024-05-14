-- Mệnh đề ORDER BY
-- ASC, DESC 
-- Mặc định: ASC
select *
from exam
order by duration desc;
--
select *
from exam
order by duration desc, created_date desc;

-- Hàm tổng hợp 
-- count(*): đếm số dòng
select count(*) -- as: đổi tên cột
from exam;

-- count(id): đếm số dòng mà id IS NOT NULL
select count(duration) -- as: đổi tên cột
from exam;
INSERT INTO exam (exam_id, code, title, category_id, duration, creator_id)
VALUES 			 ('11', 'VTIQ011', 'Đề thi MySQL', '2', null, '9');

-- sum, min, max, avg
select 
	sum(duration),
    min(duration),
    max(duration),
    avg(duration)
from exam;

-- Mệnh đề GROUP BY 
select duration, created_date, count(exam_id) as exam_count
from exam
group by duration;
--
select duration, created_date, count(exam_id) as exam_count
from exam
group by duration, created_date
order by duration, created_date;

-- Mệnh đề HAVING
select duration, created_date, count(exam_id) as exam_count
from exam
group by duration, created_date
having count(exam_id) > 1
order by duration, created_date;

-- Cập nhật dữ liệu
update department
set department_name = "Phòng chờ"
where department_id = 1;

-- Xóa dữ liệu
delete from exam
where duration IS NULL;

























