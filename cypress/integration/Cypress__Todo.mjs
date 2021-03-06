// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Cypress$RescriptMonorepo from "../../src/bindings/Cypress.mjs";

Cypress$RescriptMonorepo.describe("example to-do app", (function (param) {
        Cypress$RescriptMonorepo.beforeEach(function (param) {
              cy.visit("https://example.cypress.io/todo", undefined);
              
            });
        Cypress$RescriptMonorepo.it("displays two todo items by default", (function (param) {
                Cypress$RescriptMonorepo.shouldHaveLength(cy.get(".todo-list li", undefined), 2);
                Cypress$RescriptMonorepo.shouldHaveText(cy.get(".todo-list li", undefined).first(undefined), "Pay electric bill");
                return Cypress$RescriptMonorepo.shouldHaveText(cy.get(".todo-list li", undefined).last(undefined), "Walk the dog");
              }));
        Cypress$RescriptMonorepo.it("can add new todo items", (function (param) {
                var newItem = "Feed the cat";
                cy.get("[data-test=new-todo]", undefined).type(newItem + "{enter}", undefined);
                return Cypress$RescriptMonorepo.shouldHaveText(Cypress$RescriptMonorepo.shouldHaveLengthP(cy.get(".todo-list li", undefined), 3).last(Cypress$RescriptMonorepo.ChildrenOptions.make(undefined, undefined, undefined)), newItem);
              }));
        Cypress$RescriptMonorepo.it("can check off an item as completed", (function (param) {
                cy.contains(undefined, "Pay electric bill", undefined).parent(undefined).find("input[type=checkbox]", undefined).check(undefined);
                return Cypress$RescriptMonorepo.shouldHaveClass(cy.contains(undefined, "Pay electric bill", undefined).parents("li", undefined), "completed");
              }));
        return Cypress$RescriptMonorepo.context("with a checked task", (function (param) {
                      Cypress$RescriptMonorepo.beforeEach(function (param) {
                            cy.contains(undefined, "Pay electric bill", undefined).parent(undefined).find("input[type=checkbox]", Cypress$RescriptMonorepo.FindOptions.make(undefined, undefined, undefined, undefined)).check(undefined);
                            
                          });
                      Cypress$RescriptMonorepo.it("can filter for uncompleted tasks", (function (param) {
                              cy.contains(undefined, "Active", undefined).click(undefined);
                              Cypress$RescriptMonorepo.shouldHaveText(Cypress$RescriptMonorepo.shouldHaveLengthP(cy.get(".todo-list li", undefined), 1).first(undefined), "Walk the dog");
                              return Cypress$RescriptMonorepo.shouldNotExist(cy.contains(undefined, "Pay electric bill", undefined));
                            }));
                      Cypress$RescriptMonorepo.it("can filter for completed tasks", (function (param) {
                              cy.contains(undefined, "Completed", undefined).click(undefined);
                              Cypress$RescriptMonorepo.shouldHaveText(Cypress$RescriptMonorepo.shouldHaveLengthP(cy.get(".todo-list li", undefined), 1).first(Cypress$RescriptMonorepo.ChildrenOptions.make(undefined, undefined, undefined)), "Pay electric bill");
                              return Cypress$RescriptMonorepo.shouldNotExist(cy.contains(undefined, "Walk the dog", undefined));
                            }));
                      return Cypress$RescriptMonorepo.it("can delete all completed tasks", (function (param) {
                                    cy.contains(undefined, "Clear completed", undefined).click(undefined);
                                    Cypress$RescriptMonorepo.shouldNotHaveText(Cypress$RescriptMonorepo.shouldHaveLengthP(cy.get(".todo-list li", undefined), 1), "Pay electric bill");
                                    return Cypress$RescriptMonorepo.shouldNotExist(cy.contains(undefined, "Clear completed", undefined));
                                  }));
                    }));
      }));

export {
  
}
/*  Not a pure module */
