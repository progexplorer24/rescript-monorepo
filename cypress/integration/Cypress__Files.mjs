// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Caml_array from "rescript/lib/es6/caml_array.js";
import * as Cypress$RescriptMonorepo from "../../src/bindings/Cypress.mjs";

Cypress$RescriptMonorepo.context("Files", (function (param) {
        Cypress$RescriptMonorepo.beforeEach(function (param) {
              cy.visit("https://example.cypress.io/commands/files", undefined);
              
            });
        Cypress$RescriptMonorepo.beforeEach(function (param) {
              cy.fixture("example.json", undefined, Cypress$RescriptMonorepo.FixtureOptions.make(undefined, undefined)).as("example");
              
            });
        Cypress$RescriptMonorepo.it("cy.fixture() - load a fixture", (function (param) {
                cy.intercept("get", "**/comments/*", {
                        fixture: "example.json"
                      }).as("getComment");
                cy.get(".fixture-btn", undefined).click(undefined);
                return Cypress$RescriptMonorepo.andInclude(Cypress$RescriptMonorepo.shouldHavePropertyP(cy.wait("@getComment", undefined).its("response.body", undefined), "name"), "Using fixtures to represent data");
              }));
        Cypress$RescriptMonorepo.it("cy.readFile() - read file contents", (function (param) {
                cy.readFile("cypress.json", undefined, undefined).then(function (json) {
                      console.log(json);
                      
                    });
                cy.readFile("cypress/fixtures/example.json", undefined, undefined).then(function (json) {
                      console.log(json);
                      
                    });
                
              }));
        return Cypress$RescriptMonorepo.it("cy.writeFile() - write to a file", (function (param) {
                      cy.request(undefined, "https://jsonplaceholder.cypress.io/users", undefined).then(function (response) {
                            cy.writeFile("cypress/fixtures/users.json", response, undefined, undefined);
                            
                          });
                      cy.fixture("users", undefined, undefined).should(function (response) {
                            var users = response.body;
                            console.log(users);
                            Cypress$RescriptMonorepo.expect(Caml_array.get(users, 0).name).equal("Leanne Graham");
                            
                          });
                      cy.writeFile("cypress/fixtures/profile.json", {
                            id: 8739,
                            name: "Jane",
                            email: "jane@example.com"
                          }, undefined, undefined);
                      cy.fixture("profile", undefined, undefined).should(function (response) {
                            console.log(response);
                            Cypress$RescriptMonorepo.expect(response.name).equal("Jane");
                            
                          });
                      
                    }));
      }));

export {
  
}
/*  Not a pure module */
