Feature: Trigger a Job and validate if the store record is saved

  Background:
    And def config = { username: 'test', password: 'password', url: 'jdbc:h2:file:./testdb', driverClassName: 'org.h2.Driver' }
    And def DbUtils = Java.type('technical.DbUtils')
    And def db = new DbUtils(config)
    And def EtlJob = Java.type('technical.EtlJob')
    And def job = new EtlJob()

  Scenario: To verify that the store is correctly inserted
    * job.triggerJob()
    * def stores = db.readRows('SELECT * FROM PUBLIC.DIM_STORES where store_name=\'Testme Store 1\'')
    And print stores
    Then stores.STORE_CODE === 'IND3'
