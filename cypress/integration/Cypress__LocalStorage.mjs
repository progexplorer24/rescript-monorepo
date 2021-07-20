// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Cypress$RescriptMonorepo from "../../src/bindings/Cypress.mjs";

Cypress$RescriptMonorepo.context("Local Storage", (function (param) {
        Cypress$RescriptMonorepo.beforeEach(function (param) {
              cy.visit("https://example.cypress.io/commands/local-storage", undefined);
              
            });
        return Cypress$RescriptMonorepo.it("cy.clearLocalStorage() - clear all data in local storage", (function (param) {
                      cy.get(".ls-btn", undefined).click(undefined).should(function (_el) {
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal("red");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal("blue");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                              
                            }).then(function (param) {
                            cy.clearLocalStorage(undefined).should(function (param) {
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal(null);
                                  
                                });
                            
                          });
                      cy.get(".ls-btn", undefined).click(undefined).should(function (_el) {
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal("red");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal("blue");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                              
                            }).then(function (param) {
                            cy.clearLocalStorage(Cypress$RescriptMonorepo.LocalStorageOptions.make(undefined, undefined)).should(function (ls) {
                                  console.log(ls);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal(null);
                                  
                                });
                            
                          });
                      cy.get(".ls-btn", undefined).click(undefined).should(function (_el) {
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal("red");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal("blue");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                              
                            }).then(function (param) {
                            cy.clearLocalStorage("prop1", undefined).should(function (ls) {
                                  console.log(ls);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal("blue");
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                                  
                                });
                            
                          });
                      cy.get(".ls-btn", undefined).click(undefined).should(function (_el) {
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal("red");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal("blue");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                              
                            }).then(function (param) {
                            cy.clearLocalStorage("prop1", Cypress$RescriptMonorepo.LocalStorageOptions.make(undefined, undefined)).should(function (_ls) {
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal("blue");
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                                  
                                });
                            
                          });
                      cy.get(".ls-btn", undefined).click(undefined).should(function (param) {
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal("red");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal("blue");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                              
                            }).then(function (param) {
                            cy.clearLocalStorage(/prop1|2/, undefined).should(function (_ls) {
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                                  
                                });
                            
                          });
                      cy.get(".ls-btn", undefined).click(undefined).should(function (param) {
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal("red");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal("blue");
                              Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                              
                            }).then(function (param) {
                            cy.clearLocalStorage(/prop1|2/, Cypress$RescriptMonorepo.LocalStorageOptions.make(undefined, undefined)).should(function (_ls) {
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop1")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop2")).equal(null);
                                  Cypress$RescriptMonorepo.expect(localStorage.getItem("prop3")).equal("magenta");
                                  
                                });
                            
                          });
                      
                    }));
      }));

export {
  
}
/*  Not a pure module */