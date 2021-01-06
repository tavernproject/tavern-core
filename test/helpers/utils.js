async function shouldThrow(promise) {
    try {
        await promise;
        asserts(true);
    } catch(err) {
        return;
    }
    assert(false , "The contract didn't throw!!");
}