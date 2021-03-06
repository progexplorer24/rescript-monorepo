// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Cypress$RescriptMonorepo from "../../src/bindings/Cypress.mjs";

Cypress$RescriptMonorepo.context("Connectors", (function (param) {
        Cypress$RescriptMonorepo.beforeEach(function (param) {
              cy.visit("https://example.cypress.io/commands/connectors", undefined);
              
            });
        Cypress$RescriptMonorepo.it(".each() - iterate over an array of elements", (function (param) {
                cy.get(".connectors-each-ul>li", undefined).each(function (el, param, param$1) {
                      console.log(el);
                      
                    });
                
              }));
        Cypress$RescriptMonorepo.it(".each() - iterate over an array of elements", (function (param) {
                cy.get(".connectors-each-ul>li", undefined).each(function (el, index, collection) {
                      console.log(el, index, collection);
                      
                    });
                
              }));
        Cypress$RescriptMonorepo.it(".its() - get properties on the current subject", (function (param) {
                return Cypress$RescriptMonorepo.shouldBeGtInt(cy.get(".connectors-its-ul>li", undefined).its("length", undefined), 2);
              }));
        Cypress$RescriptMonorepo.it(".invoke() - invoke a function on the current subject", (function (param) {
                return Cypress$RescriptMonorepo.shouldBeVisible(Cypress$RescriptMonorepo.shouldBeHiddenP(cy.get(".connectors-div", undefined)).invoke(Cypress$RescriptMonorepo.ChildrenOptions.make(undefined, undefined, undefined), "show"));
              }));
        Cypress$RescriptMonorepo.describe(".then()", (function (param) {
                return Cypress$RescriptMonorepo.it("invokes a callback function with the current subject", (function (param) {
                              cy.get(".connectors-list > li", undefined).then(function (lisRaw) {
                                    var el1 = lisRaw.get(0);
                                    var el2 = lisRaw.get(1);
                                    var el3 = lisRaw.get(2);
                                    Cypress$RescriptMonorepo.expectWithDescription(lisRaw, "3 items").to.have.length(3);
                                    Cypress$RescriptMonorepo.expectWithDescription(el1, "first item").to.have.text("Walk the dog");
                                    Cypress$RescriptMonorepo.expectWithDescription(el2, "second item").to.have.text("Feed the cat");
                                    Cypress$RescriptMonorepo.expectWithDescription(el3, "third item").to.have.text("Write JavaScript");
                                    
                                  });
                              
                            }));
              }));
        Cypress$RescriptMonorepo.it("yields the returned value to the next command", (function (param) {
                cy.wrap(1).then(function (num) {
                        Cypress$RescriptMonorepo.expect(num).equal(1);
                        return 2;
                      }).then(function (num) {
                      Cypress$RescriptMonorepo.expect(num).equal(2);
                      
                    });
                
              }));
        Cypress$RescriptMonorepo.it("yields the original subject without return", (function (param) {
                cy.wrap(1).then(function (num) {
                        Cypress$RescriptMonorepo.expect(num).equal(1);
                        
                      }).then(function (num) {
                      Cypress$RescriptMonorepo.expect(num).equal(1);
                      
                    });
                
              }));
        return Cypress$RescriptMonorepo.it("yields the value yielded by the last Cypress command inside", (function (param) {
                      cy.wrap(1).then(function (num) {
                              Cypress$RescriptMonorepo.expect(num).equal(1);
                              return cy.wrap(2);
                            }).then(function (num) {
                            Cypress$RescriptMonorepo.expect(num).equal(2);
                            
                          });
                      
                    }));
      }));

export {
  
}
/*  Not a pure module */
