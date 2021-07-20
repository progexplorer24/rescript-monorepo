// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Cypress$RescriptMonorepo from "../../src/bindings/Cypress.mjs";

Cypress$RescriptMonorepo.context("Location", (function (param) {
        Cypress$RescriptMonorepo.beforeEach(function (param) {
              cy.visit("https://example.cypress.io/commands/location", undefined);
              
            });
        Cypress$RescriptMonorepo.it("cy.hash() - get the current URL hash", (function (param) {
                return Cypress$RescriptMonorepo.shouldBeEmpty(cy.hash(undefined));
              }));
        Cypress$RescriptMonorepo.it("cy.location() - get window.location", (function (param) {
                cy.location(undefined).should(function (locObject) {
                      Cypress$RescriptMonorepo.expect(locObject.hash).equal("");
                      Cypress$RescriptMonorepo.expect(locObject.href).equal("https://example.cypress.io/commands/location");
                      Cypress$RescriptMonorepo.expect(locObject.host).equal("example.cypress.io");
                      Cypress$RescriptMonorepo.expect(locObject.hostname).equal("example.cypress.io");
                      Cypress$RescriptMonorepo.expect(locObject.origin).equal("https://example.cypress.io");
                      Cypress$RescriptMonorepo.expect(locObject.pathname).equal("/commands/location");
                      Cypress$RescriptMonorepo.expect(locObject.port).equal("");
                      Cypress$RescriptMonorepo.expect(locObject.protocol).equal("https:");
                      Cypress$RescriptMonorepo.expect(locObject.search).equal("");
                      
                    });
                
              }));
        return Cypress$RescriptMonorepo.it("cy.url() - get the current URL", (function (param) {
                      return Cypress$RescriptMonorepo.shouldEqualString(cy.url(undefined), "https://example.cypress.io/commands/location");
                    }));
      }));

export {
  
}
/*  Not a pure module */
