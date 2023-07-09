(() => {
    console.log('Start:');
    console.time();

    const getRandomGender = () => {
        const GENDERS = ['male', 'female', 'unspecified'];
        return GENDERS[Math.round(Math.random() * GENDERS.length)];
    };

    const getRandomDate = ([startDate, endDate]) => {
        const startDateTime = startDate.getTime();
        const endDateTime = endDate.getTime();

        return new Date(Math.round(Math.random() * (endDateTime - startDateTime) + startDateTime));
    };

    const getRandomRole = () => {
        const USER_ROLES = ['admin', 'moderator', 'reader'];
        return USER_ROLES[Math.round(Math.random() * USER_ROLES.length)]
    };

    const getAgeFromDate = (date) => {
        return new Date().getFullYear() - date.getFullYear()
    };

    const DATE_RANGE = [new Date(1900, 1, 1), new Date(2005, 1, 1)];

    for (let i = 1; i < 1000001; i++) {
        const randomBirthDate = getRandomDate(DATE_RANGE);
        const randomAge = getAgeFromDate(birthDate);
        const insertStatement = 'INSERT INTO user (username, gender, age, birthdate, role) VALUES (?, ?, ?, ?, ?)';

        session.runSql(insertStatement, [`user${i}`, getRandomGender(), randomAge, randomBirthDate, getRandomRole()]);
    }

    console.log('Total execution time');
    console.timeEnd();
})();
