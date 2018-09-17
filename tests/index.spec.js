import chai, { expect } from 'chai';
import sinon from 'sinon';
import sinonChai from 'sinon-chai';
import sinonStubPromise from 'sinon-stub-promise';

sinonStubPromise(sinon);
chai.use(sinonChai);


describe('Application Wrapper', () => {

  it('should receive 1 as value', () => {
    expect(1).to.be.equal(1);
  });
});
