// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Caml_array from "rescript/lib/es6/caml_array.js";
import * as Cypress$RescriptMonorepo from "../../src/bindings/Cypress.mjs";

Cypress$RescriptMonorepo.context("Cookies", (function (param) {
        Cypress$RescriptMonorepo.beforeEach(function (param) {
              Cypress.Cookies.debug(true);
              cy.visit("https://example.cypress.io/commands/cookies", undefined);
              cy.clearCookies(undefined);
              
            });
        Cypress$RescriptMonorepo.it("cy.getCookie() - get a browser cookie", (function (param) {
                cy.get("#getCookie .set-a-cookie", undefined).click(undefined);
                Cypress$RescriptMonorepo.shouldHaveProperty(cy.getCookie("token", Cypress$RescriptMonorepo.ChildrenOptions.make(undefined, undefined, undefined)), "value");
                return Cypress$RescriptMonorepo.shouldHavePropertyWithValue(cy.getCookie("token", Cypress$RescriptMonorepo.ChildrenOptions.make(undefined, undefined, undefined)), "value", "123ABC");
              }));
        Cypress$RescriptMonorepo.it("cy.getCookies() - get browser cookies", (function (param) {
                Cypress$RescriptMonorepo.shouldBeEmpty(cy.getCookies(undefined));
                cy.get("#getCookies .set-a-cookie", undefined).click(undefined);
                Cypress$RescriptMonorepo.shouldHaveLengthP(cy.getCookies(undefined), 1).should(function (cookies) {
                      Cypress$RescriptMonorepo.expect(Caml_array.get(cookies, 0)).to.have.property("name", "token");
                      Cypress$RescriptMonorepo.expect(Caml_array.get(cookies, 0)).to.have.property("value", "123ABC");
                      Cypress$RescriptMonorepo.expect(Caml_array.get(cookies, 0)).to.have.property("httpOnly", false);
                      Cypress$RescriptMonorepo.expect(Caml_array.get(cookies, 0)).to.have.property("secure", false);
                      Cypress$RescriptMonorepo.expect(Caml_array.get(cookies, 0)).to.have.property("domain");
                      Cypress$RescriptMonorepo.expect(Caml_array.get(cookies, 0)).to.have.property("path");
                      
                    });
                
              }));
        Cypress$RescriptMonorepo.it("cy.setCookie() - set a browser cookie", (function (param) {
                Cypress$RescriptMonorepo.shouldBeEmpty(cy.getCookies(undefined));
                cy.setCookie("foo", "bar", undefined);
                cy.getCookie("foo", undefined).then(function (cookie) {
                      console.log(cookie);
                      
                    });
                return Cypress$RescriptMonorepo.shouldHavePropertyWithValue(cy.getCookie("foo", undefined), "value", "bar");
              }));
        Cypress$RescriptMonorepo.it("cy.clearCookie() - clear a browser cookie", (function (param) {
                Cypress$RescriptMonorepo.shouldBeNull(cy.getCookie("token", undefined));
                cy.get("#clearCookie .set-a-cookie", undefined).click(undefined);
                Cypress$RescriptMonorepo.shouldHavePropertyWithValue(cy.getCookie("token", undefined), "value", "123ABC");
                cy.clearCookie("token", undefined);
                Cypress$RescriptMonorepo.shouldBeNull(cy.getCookie("token", undefined));
                cy.get("#clearCookie .set-a-cookie", undefined).click(undefined);
                Cypress$RescriptMonorepo.shouldHavePropertyWithValue(cy.getCookie("token", undefined), "value", "123ABC");
                cy.clearCookie("token", Cypress$RescriptMonorepo.ChildrenOptions.make(undefined, undefined, undefined));
                return Cypress$RescriptMonorepo.shouldBeNull(cy.getCookie("token", undefined));
              }));
        return Cypress$RescriptMonorepo.it("cy.clearCookies() - clear browser cookies", (function (param) {
                      Cypress$RescriptMonorepo.shouldBeEmpty(cy.getCookies(undefined));
                      cy.get("#clearCookies .set-a-cookie", undefined).click(undefined);
                      Cypress$RescriptMonorepo.shouldHaveLength(cy.getCookies(undefined), 1);
                      cy.clearCookies(undefined);
                      Cypress$RescriptMonorepo.shouldBeEmpty(cy.getCookies(undefined));
                      cy.get("#clearCookies .set-a-cookie", undefined).click(undefined);
                      Cypress$RescriptMonorepo.shouldHaveLength(cy.getCookies(undefined), 1);
                      cy.clearCookies(Cypress$RescriptMonorepo.ChildrenOptions.make(undefined, undefined, undefined));
                      return Cypress$RescriptMonorepo.shouldBeEmpty(cy.getCookies(undefined));
                    }));
      }));

export {
  
}
/*  Not a pure module */
