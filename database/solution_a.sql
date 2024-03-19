-- 1. Lấy ra danh sách người dùng theo thứ tự tên theo Alphabet (A->Z)
SELECT * FROM users ORDER BY user_name;

-- 2. Lấy ra 07 người dùng theo thứ tự tên theo Alphabet (A->Z)
SELECT * FROM users ORDER BY user_name LIMIT 7;

-- 3. Lấy ra danh sách người dùng theo thứ tự tên theo Alphabet (A->Z), trong đó tên người dùng có chữ a
SELECT * FROM users WHERE user_name LIKE '%a%' ORDER BY user_name;

-- 4. Lấy ra danh sách người dùng trong đó tên người dùng bắt đầu bằng chữ m
SELECT * FROM users WHERE user_name LIKE 'm%' ORDER BY user_name;

-- 5. Lấy ra danh sách người dùng trong đó tên người dùng kết thúc bằng chữ i
SELECT * FROM users WHERE user_name LIKE '%i' ORDER BY user_name;

-- 6. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ: example@gmail.com)
SELECT * FROM users WHERE user_email LIKE '%@gmail.com';

-- 7. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ:example@gmail.com), tên người dùng bắt đầu bằng chữ m
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND user_name LIKE 'm%';

-- 8. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ: example@gmail.com), tên người dùng có chữ i và tên người dùng có chiều dài lớn hơn 5
SELECT * 
FROM users 
WHERE user_email LIKE '%@gmail.com' 
AND user_name LIKE '%i%' 
AND LENGTH(user_name) > 5;

-- 9. Lấy ra danh sách người dùng trong đó tên người dùng có chữ a, chiều dài từ 5 đến 9, email dùng dịch vụ Gmail, trong tên email có chữ I (trong tên, chứ không phải domain exampleitest@yahoo.com)
SELECT * 
FROM users 
WHERE user_name LIKE '%a%' 
AND LENGTH(user_name) BETWEEN 5 AND 9 
AND user_email LIKE '%@gmail.com' 
AND user_email LIKE '%I%';

-- 10. Lấy ra danh sách người dùng trong đó tên người dùng có chữ a, chiều dài từ 5 đến 9 hoặc tên người dùng có chữ i, chiều dài nhỏ hơn 9 hoặc email dùng dịch vụ Gmail, trong tên email có chữ i
SELECT * 
FROM users 
WHERE (user_name LIKE '%a%' AND LENGTH(user_name) BETWEEN 5 AND 9)
OR (user_name LIKE '%i%' AND LENGTH(user_name) < 9)
OR (user_email LIKE '%@gmail.com' AND user_email LIKE '%i%');


