import time
from datetime import date, datetime, timedelta
import random

print('Start:')

start_time = time.time()

def get_random_gender():
    GENDERS = ['male', 'female', 'unspecified']
    return random.choice(GENDERS)

def get_random_date_time(start_date, end_date):
    date_difference = end_date - start_date
    random_days = random.randrange(date_difference.days)
    seconds_in_day = 60 * 60 * 24
    random_seconds = random.randrange(seconds_in_day)
    return datetime.combine(start_date, datetime.min.time()) + timedelta(days=random_days, seconds=random_seconds)

def get_random_role():
    USER_ROLES = ['admin', 'moderator', 'reader']
    return random.choice(USER_ROLES)

def get_age_from_date(birth_date_time):
    time_difference = datetime.now() - birth_date_time
    return time_difference.days // 365

DATE_RANGE = (date(1900, 1, 1), date(2005, 1, 1))

for i in range(1, 1000001):
    birth_date_time = get_random_date_time(*DATE_RANGE)
    age = get_age_from_date(birth_date_time)
    insert_statement = 'INSERT INTO user (username, gender, age, birthdate, role) VALUES (?, ?, ?, ?, ?)'
    session.run_sql(insert_statement, ('user' + str(i), get_random_gender(), age, birth_date_time.strftime('%Y-%m-%d %H:%M:%S'), get_random_role()))

print('Total execution time:\n')
print("--- %s seconds ---" % (time.time() - start_time))
