(() => {
    const NUMBER_OF_RECORDS = 5;
    const userBalanceTable = db.getTable('user_balance');

    for (let i = 1; i <= NUMBER_OF_RECORDS; i++) {
        userBalanceTable
            .insert(['id', 'balance'])
            .values(i, i)
            .execute();
    }
})();

(() => {
    const NUMBER_OF_RECORDS = 5;

    for (let i = 1; i <= NUMBER_OF_RECORDS; i++) {
        session.runSql('INSERT INTO user_balance (id, balance) VALUES (?, ?)', [i, i]);
    }
})();
