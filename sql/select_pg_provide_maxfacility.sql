select name as NAME,
MAX(has_food + has_laundary + has_airconditioner + has_tv + has_internet + has_waterheater) AS MaxFacilities 
from pg1.pg;