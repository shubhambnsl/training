select name as NAME,
has_food + has_laundary + has_airconditioner + has_tv + has_internet + has_waterheater AS NumberOfFeatures 
from pg1.pg ORDER BY NumberOfFeatures DESC;