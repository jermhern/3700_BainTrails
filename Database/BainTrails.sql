create table BT_USER(
	User_Id char(7) primary key,
	Username char(15) NOT NULL,
	User_Email varchar(50) NOT NULL,
	User_Passowrd varchar(10) NOT NULL
);

create table TRAIL(
	Trail_Id char(7) primary key,
	Trail_Name char(50) NOT NULL,
	Trail_Distance varchar(10) NOT NULL,
	Trail_Elevation varchar(10) NOT NULL,
	Trail_Difficulty char(10) NOT NULL,
	Trail_Reviews varchar(70),
	Trail_Lat smallint(15) NOT NULL,
	Trail_Long smallint(15) NOT NULL,
	Trail_Img text,
	Trail_Dog tinyint(1),
	Trail_Family tinyint(1),
	Trail_Forest tinyint(1),
	Trail_View tinyint(1),
	Trail_BodyWater tinyint(1),
	Trail_Wildlife tinyint(1),
	Trail_Parking_Fee tinyint(1)
);

create table Photos(
	Photo_Id char(7) primary key,
	Trail_Id char(7) NOT NULL,
	Photo_URL text NOT NULL,
	foreign key (Trail_Id) references TRAIL(Trail_Id)
);

insert into TRAIL(Trail_Id,Trail_Name,Trail_Distance,Trail_Elevation,Trail_Difficulty,Trail_Reviews,Trail_Lat,Trail_Long,
Trail_Img,Trail_Dog,Trail_Family,Trail_Forest,Trail_View,Trail_BodyWater,Trail_Wildlife,Trail_Parking_Fee) values
('4GHT6QZ', 'Bloedel Reserve Loop', '1.7 mi', '88 ft', 'Easy', '4.8 288 Reviews', '47.7065644', '-122.5498121', 'J8K2MZ1', '0', '1', '1', '1', '1', '1', '1'),
('9R5UW2A', 'Hidden Cove Trail #4', '2.5 mi', '229 ft', 'Easy', '4.5 198 reviews', '47.6444702', '-122.6666406', 'QW4RT7Y', '1', '1', '1', '1', '1', '1', '0'),
('X7MJ3KD', 'Manzanita Park Loop', '1.2 mi', '85 ft', 'Easy', '4.2 73 Reviews', '47.68069', '-122.56114','B6VFN3X','1', '1', '1', '0', '0', '1', '0'),
('PB4Z8VN', 'Ted Olson Loop', '0.9 mi', '78 ft', 'Easy', '4.4 57 Reviews', '47.67081', '-122.51826','Z1PLO9C', '1', '1', '1', '0', '0', '1', '0'),
('LMN23Q7', 'Battle Point Trail', '1.6 mi', '39 ft', 'Easy', '4.5 276 Reviews', '47.66397', '-122.57703','H5SDR2E', '1', '1', '0', '0', '1', '0', '0'),
('QT5Y8R1', 'Forest to Sky Trail', '2.0 mi', '206 ft', 'Easy', '4.5 155 Reviews', '47.65938', '-122.55909','T7YUI4O', '1', '1', '1', '1', '0', '0', '0'),
('ZK9F6YD', 'Grand Forest Park Trail', '2.3 mi', '272 ft', 'Easy', '4.7 1315 Reviews', '47.65665', '-122.55970','M3NBV8L', '1', '1', '1', '0', '1', '0', '0'),
('H4XVD3J', 'Grand Forest Figure Eight', '4.7 mi', '419 ft', 'Moderate', '4.7 611 Reviews', '47.65694', '-122.56048','X2CZA6P', '0', '0', '1', '0', '0', '0', '0'),
('S5WA7PQ', 'Grand Forest West Main Trail', '1.1 mi', '62 ft', 'Easy', '4.7 347 Reviews', '47.65667', '-122.56032','R9QWE5T', '1', '1', '1', '0', '0', '1', '0'),
('Y2RK6LD', 'Main Loop Trail', '1.8 mi', '88 ft', 'Easy', '4.6 315 Reviews', '47.65066', '-122.54784','G4HJY1U', '1', '1', '1', '0', '0', '1', '0'),
('V9J3TXC', 'Gazzam Lake Park Trail', '3.2 mi', '187 ft', 'Easy', '4.6 753 Reviews', '47.62491', '-122.56588','F8MKI3N', '1', '1', '1', '1', '1', '1', '1'),
('F7Z1QGM', 'Gazzam Lake and Veterane Open Space Preserves', '6.3 mi', '912 ft', 'Moderate', '4.7 495 Reviews', '47.60978', '-122.56378','L0OPB7V', '1', '0', '1', '1', '1', '1', '0'),
('D8LVR4N', 'Peters Trail and Opal Ridge Loop', '2.6 mi', '314 ft', 'Moderate', '4.6 96 Reviews', '47.60992', '-122.56381','S6DFG4H', '1', '1', '1', '1', '1', '1', '0'),
('E3NQ5HB', 'Japanese American Exclusion Memorial', '1.3 mi', '121 ft', 'Moderate', '4.3 93 Reviews', '47.61545', '-122.50043','N2VCX8Z', '1', '1', '1', '1', '1', '0', '0'),
('UYNR795', 'Fort Ward Upper Loop', '1.6 mi', '196 ft', 'Easy', '4.6 310 Reviews', '47.58843', '-122.53137','K5LMN9J', '1', '1', '1', '1', '1', '0', '0');



insert into Photos(Photo_Id, Trail_Id, Photo_URL) values
('J8K2MZ1','4GHT6QZ','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNDE0NzkzNDMvZmVlMGFmMjc1ZmVlMmU1MzQ5NzliZDE1ODU1MGQ5MTYuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoxMDgwLCJoZWlnaHQiOjcwMCwiZml0IjoiY292ZXIifSwicm90YXRlIjpudWxsLCJqcGVnIjp7InRyZWxsaXNRdWFudGlzYXRpb24iOnRydWUsIm92ZXJzaG9vdERlcmluZ2luZyI6dHJ1ZSwib3B0aW1pc2VTY2FucyI6dHJ1ZSwicXVhbnRpc2F0aW9uVGFibGUiOjN9fX0%3D&w=1920&q=75'),
('QW4RT7Y','9R5UW2A','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNzg3OTIxNTAvNTBjMGVkODQ5MjdiZTcyZjU4NzUzNDExZmEyYmU5ZDYuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoxMDgwLCJoZWlnaHQiOjcwMCwiZml0IjoiY292ZXIifSwicm90YXRlIjpudWxsLCJqcGVnIjp7InRyZWxsaXNRdWFudGlzYXRpb24iOnRydWUsIm92ZXJzaG9vdERlcmluZ2luZyI6dHJ1ZSwib3B0aW1pc2VTY2FucyI6dHJ1ZSwicXVhbnRpc2F0aW9uVGFibGUiOjN9fX0%3D&w=1920&q=75'),
('B6VFN3X','X7MJ3KD','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvMTk0NDczNjIvMGZlMTE2YTI1YTE5YTAxZDYyMTcxMzVlYWM5MGI1OTcuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoxMDgwLCJoZWlnaHQiOjcwMCwiZml0IjoiY292ZXIifSwicm90YXRlIjpudWxsLCJqcGVnIjp7InRyZWxsaXNRdWFudGlzYXRpb24iOnRydWUsIm92ZXJzaG9vdERlcmluZ2luZyI6dHJ1ZSwib3B0aW1pc2VTY2FucyI6dHJ1ZSwicXVhbnRpc2F0aW9uVGFibGUiOjN9fX0%3D&w=1920&q=75'),
('Z1PLO9C','PB4Z8VN','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNDQ2NTcwMjMvMTI5NGVkMTNkZWU4ODE5MzY4MGM1ZmEzYmI3YjVkNDQuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoxMDgwLCJoZWlnaHQiOjcwMCwiZml0IjoiY292ZXIifSwicm90YXRlIjpudWxsLCJqcGVnIjp7InRyZWxsaXNRdWFudGlzYXRpb24iOnRydWUsIm92ZXJzaG9vdERlcmluZ2luZyI6dHJ1ZSwib3B0aW1pc2VTY2FucyI6dHJ1ZSwicXVhbnRpc2F0aW9uVGFibGUiOjN9fX0%3D&w=1920&q=75'),
('H5SDR2E','LMN23Q7','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvMzA1NjU4MDIvZWQzYTBlMzBkMTFmNzU4ZDdiNTk3N2ZkOGM1OThhOTkuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M319fQ%3D%3D&w=750&q=90'),
('T7YUI4O','QT5Y8R1','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNTkzNTUyNzgvNTU5YWM5OWU4MTg0NDg2OTFiMGExZGQ0ZWQzOGUwMjUuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjozNTIwLCJoZWlnaHQiOjE2MDAsImZpdCI6ImNvdmVyIn0sInJvdGF0ZSI6bnVsbCwianBlZyI6eyJ0cmVsbGlzUXVhbnRpc2F0aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=640&q=90'),
('M3NBV8L','ZK9F6YD','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNzU0NDUyMjQvNzc0YmU2NmY2MzlkNzQxN2ZiMmNmOGJmY2QxYWViMmEuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjozNTIwLCJoZWlnaHQiOjE2MDAsImZpdCI6ImNvdmVyIn0sInJvdGF0ZSI6bnVsbCwianBlZyI6eyJ0cmVsbGlzUXVhbnRpc2F0aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=640&q=90'),
('X2CZA6P','H4XVD3J','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvMjgwMjM5OTUvMWY1MTljOTViZGE5NTg3ODk3Y2NhODE3NWJjYzRhMzcuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjozNTIwLCJoZWlnaHQiOjE2MDAsImZpdCI6ImNvdmVyIn0sInJvdGF0ZSI6bnVsbCwianBlZyI6eyJ0cmVsbGlzUXVhbnRpc2F0aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=3840&q=90'),
('R9QWE5T','S5WA7PQ','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNDUzNDc5NDkvYzQ1NDNjNTA4ZTQ2NzhhNWI5MmEwMzhkMGQ1OGZhOTUuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=1200&q=90'),
('G4HJY1U','Y2RK6LD','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvODUyNzQ1MjYvMDUyNjA3ZWFlNjE2NGRjOWY4ZjVmOTk0Y2Y4NGU5NTIuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=1200&q=90'),
('F8MKI3N','V9J3TXC','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvMjA0ODAxOTAvNzUwYjE5NTIzZTU5NzMxN2JlNzE0N2JkN2JkOWYwNzAuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=1200&q=90'),
('L0OPB7V','F7Z1QGM','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNjMwNDcxMzkvNmJhOGJiMjI0YWJkMzlmMTAwODI3ZGM0ZmRkYWNhMTMuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjozNTIwLCJoZWlnaHQiOjE2MDAsImZpdCI6ImNvdmVyIn0sInJvdGF0ZSI6bnVsbCwianBlZyI6eyJ0cmVsbGlzUXVhbnRpc2F0aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=3840&q=90'),
('S6DFG4H','D8LVR4N','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvMzE5OTA2ODMvZThiYzljZmEwMWNhM2RjZGQ0MDZhNTRhMDgxMDllODAuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=750&q=90'),
('N2VCX8Z','E3NQ5HB','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNDg3ODc0MTUvNmE2MDVjNzRiNzhmMzk5M2QzNzI0YzI1ZjQ5YjljNTcuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=750&q=90'),
('K5LMN9J','UYNR795','https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNTc1Mjk5NzAvMzZlMTAwMzcyN2MxMmVhNzdlNGM1NTE3ZTRhMjgxZDIuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M30%3D&w=750&q=90');

update Photos 
set Photo_URL = 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fveganadventures.org%2Fwp-content%2Fuploads%2F2021%2F02%2FPeters-Trail-Camp-1.jpg&f=1&nofb=1&ipt=304def2806a31ce0bca201a1202f21c054d6019e3e226a8067130ba56c39114b'
where Trail_Id = 'D8LVR4N';

update Photos 
set Photo_URL = 'https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNDg3ODc0MTUvNmE2MDVjNzRiNzhmMzk5M2QzNzI0YzI1ZjQ5YjljNTcuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M319fQ%3D%3D&w=1200&q=90'
where Trail_Id = 'E3NQ5HB';

update Photos 
set Photo_URL = 'https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvMjA0ODAxOTAvNzUwYjE5NTIzZTU5NzMxN2JlNzE0N2JkN2JkOWYwNzAuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M319fQ%3D%3D&w=1200&q=90'
where Trail_Id = 'F7Z1QGM';

update Photos
set Photo_URL = 'https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvODc3NTc4MzYvZTFiY2FjOGI2NTczYWRjZjFjZDM2NGJmZGEzYThjMTkuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M319fQ%3D%3D&w=1200&q=90'
where Trail_Id = 'H4XVD3J';

update Photos 
set Photo_URL = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbiparks.org%2Fwp-content%2Fuploads%2F2016%2F05%2Fparks_foresttoskytrail_boardwalk_0214.jpg&f=1&nofb=1&ipt=afa5c2b2b8f135a09c1a044ed245e9704c5afc09d17d1a42b1336694c4895e95'
where Trail_Id = 'QT5Y8R1';

update Photos
set Photo_URL = 'https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNDUzNDc5NDkvYzQ1NDNjNTA4ZTQ2NzhhNWI5MmEwMzhkMGQ1OGZhOTUuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M319fQ%3D%3D&w=1200&q=90'
where Trail_Id = 'S5WA7PQ';

update Photos
set Photo_URL = 'https://www.alltrails.com/_next/image?url=https%3A%2F%2Fimages.alltrails.com%2FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNTc1Mjk5NzAvMzZlMTAwMzcyN2MxMmVhNzdlNGM1NTE3ZTRhMjgxZDIuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjoyMDQ4LCJoZWlnaHQiOjIwNDgsImZpdCI6Imluc2lkZSJ9LCJyb3RhdGUiOm51bGwsImpwZWciOnsidHJlbGxpc1F1YW50aXNhdGlvbiI6dHJ1ZSwib3ZlcnNob290RGVyaW5naW5nIjp0cnVlLCJvcHRpbWlzZVNjYW5zIjp0cnVlLCJxdWFudGlzYXRpb25UYWJsZSI6M319fQ%3D%3D&w=1200&q=90'
where Trail_Id = 'UYNR795';

update Photos
set Photo_URL = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Frollingwashington.org%2Fwp-content%2Fuploads%2F2021%2F09%2FIMG_3500-scaled.jpg&f=1&nofb=1&ipt=9ba994f205f2c5056cbcc8d29a6b1497d3dd305ac6d58d5a666a810bdbb79478'
where Trail_Id = 'V9J3TXC';

update Photos
set Photo_URL = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.alltrails.com%2F_next%2Fimage%3Furl%3Dhttps%3A%252F%252Fimages.alltrails.com%252FeyJidWNrZXQiOiJhc3NldHMuYWxsdHJhaWxzLmNvbSIsImtleSI6InVwbG9hZHMvcGhvdG8vaW1hZ2UvNTg0MDc2OTEvNTA1NzlhODU3MjkyNDFiMzJmMDJhZDZjNDlkYmVkMzIuanBnIiwiZWRpdHMiOnsidG9Gb3JtYXQiOiJ3ZWJwIiwicmVzaXplIjp7IndpZHRoIjozNTIwLCJoZWlnaHQiOjE2MDAsImZpdCI6ImNvdmVyIn0sInJvdGF0ZSI6bnVsbCwianBlZyI6eyJ0cmVsbGlzUXVhbnRpc2F0aW9uIjp0cnVlLCJvdmVyc2hvb3REZXJpbmdpbmciOnRydWUsIm9wdGltaXNlU2NhbnMiOnRydWUsInF1YW50aXNhdGlvblRhYmxlIjozfX19%26w%3D3840%26q%3D90&f=1&nofb=1&ipt=926f678005a0edbc68e4c40147e6e62ae39427f7015c9f9d65b5dbd4e1650bf3'
where Trail_Id = 'Y2RK6LD';

update Photos
set Photo_URL = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fhikingproject.com%2Fassets%2Fphotos%2Fhike%2F7087846_medium_1688784058.jpg%3Fcache%3D1731741412&f=1&nofb=1&ipt=56915c759474544840f90e7d144641637ede86f5543f00bab12b0b532fe8ecb5'
where Trail_Id = 'ZK9F6YD';
