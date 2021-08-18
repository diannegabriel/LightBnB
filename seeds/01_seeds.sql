INSERT INTO users (id, name, email, password) 
VALUES (1, 'Dianne', 'dennaire@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(2, 'Tony', 'rdj@stark.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(3, 'Thanos', 'thanos@infinity.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(4, 'Shohei', 'shotime@mlb.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(5, 'Steve', 'evans@cap.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(6, 'Shrek', 'shrek@ogre.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (id, owner_id, title, description, 
thumbnail_photo_url, cover_photo_url, 
cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms,
country, street, city, province, post_code,
active) 
VALUES (1, 1, 'Paradise in the Suburbs', 'description', 'https://insauga-image-storage.s3.ca-central-1.amazonaws.com/wp-content/uploads/sites/3/2019/02/hurontario_2-scaled.jpg', 'https://www.theglobeandmail.com/resizer/b2tOrbiHXSrO6H4CTZv2tfC7BnU=/2500x0/filters:quality(80)/cloudfront-us-east-1.images.arcpublishing.com/tgam/VC4RSY26Q5CAPBXWZFR726SOT4.JPG', 150, 2, 2, 4, 'Canada', 'Dixie', 'Mississauga', 'Ontario', 'L4U 9J5', true),
(2, 2, 'Dream Tower', 'Its the Start Tower!', 'https://oyster.ignimgs.com/mediawiki/apis.ign.com/marvel-studios-cinematic-universe/f/f2/Stark_Tower.jpg', 'https://x5n.ab0.myftpupload.com/wp-content/uploads/2019/05/marvel-penthouse-interior-ideas-from-the-stark-tower-01-2.jpg', 
1000000, 100, 50, 50,
'USA', 'Manhattan', 'New York City', 'New York', '313123',
false),
(3, 3, 'The Garden', 'Leave Thanos alone!', 
'http://psychologicalmovieproject.weebly.com/uploads/2/7/6/3/27636321/8821461_orig.jpg', 'https://i.pinimg.com/originals/2f/bd/75/2fbd75e44cf172d6f578baa70255162f.jpg', 
50, 1, 0.5, 1,
'Land of Duloc', 'Swamp', 'Charlestone', 'South Carolina', '098098',
true);

INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
VALUES (1, '2018-09-11', '2018-09-26', 1, 4),
(2, '2021-10-01', '2021-10-14', 2, 5),
(3, '2023-05-27', '2023-05-28', 3, 6);

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
VALUES (1, 4, 1, 1, 8, 'Good location'),
(2, 5, 2, 2, 10, 'Spacious!'),
(3, 6, 3, 3, 10, 'LOVELY');
