const assert = require ('assert');
const Taxi = require('../taxi.js');

describe('Taxi', function(){

    let taxi;

    beforeEach(function(){
        taxi = new Taxi('Honda', 'Civic', 'José');
    })
    it('should have a manufacturer',function(){
        const actual = taxi.manufacturer;
        const expected = 'Honda'
        assert.strictEqual(actual,expected);
    });
    it('should have a model', function(){
        const actual = taxi.model;
        assert.strictEqual(actual, 'Civic');   
    });

    it('should have a driver', function(){
        const actual = taxi.driver;
        assert.strictEqual(actual, 'José');
    })

    describe('passengers', function(){
        it('should start with no passengers', function(){
            const actual = taxi.passengers;
            assert.deepStrictEqual(actual, []);
        })

        it('should get the number of passengers', function(){
            const actual = taxi.passengers.length;
            assert.deepStrictEqual(actual, 0)
        })

        xit('should be able to add passengers', function(){
            const actual = taxi.passengers;
            assert.deepStrictEqual(actual, [])
        })
    })

})  