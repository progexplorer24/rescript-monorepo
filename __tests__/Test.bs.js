// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "bs-platform/lib/es6/curry.js";
import * as Sum$RescriptMonorepo from "../src/Sum.bs.js";

function drinkAll(callback, flavour) {
  if (flavour !== "octopus") {
    return flavour;
  } else {
    return Curry._1(callback, flavour);
  }
}

describe("Common Matchers", (function () {
        test("toBe", (function () {
                expect(Sum$RescriptMonorepo.sum(1, 2)).toBe(3);
                
              }));
        test("two plus two is four", (function () {
                expect(4).toBe(4);
                
              }));
        test("two plus two is not five", (function () {
                expect(4).not.toBe(5);
                
              }));
        test("object assignment using rescript records", (function () {
                var dataUpdate = {
                  num: 2,
                  name: "test"
                };
                var dataMutable = {
                  name: "Baby",
                  age: 5
                };
                dataMutable.age = dataMutable.age + 1 | 0;
                expect({
                        num: 1,
                        name: "test"
                      }).toEqual({
                      num: 1,
                      name: "test"
                    });
                expect(dataUpdate).toEqual({
                      num: 2,
                      name: "test"
                    });
                expect(dataMutable).toEqual({
                      name: "Baby",
                      age: 6
                    });
                
              }));
        test("null", (function () {
                var $$null = null;
                expect($$null).toBeDefined();
                expect(undefined).not.toBeDefined();
                expect($$null).toBeNull();
                expect(undefined).not.toBeNull();
                expect(undefined).toBeUndefined();
                expect($$null).not.toBeUndefined();
                expect(true).toBeTruthy();
                expect($$null).not.toBeTruthy();
                expect($$null).toBeFalsy();
                expect(true).not.toBeFalsy();
                
              }));
        test("zero", (function () {
                expect(0).not.toBeNull();
                expect(0).toBeDefined();
                expect(0).not.toBeUndefined();
                expect(0).not.toBeTruthy();
                expect(0).toBeFalsy();
                
              }));
        test("two plus two", (function () {
                expect(4).toBeGreaterThan(3);
                expect(4).toBeGreaterThanOrEqual(3.5);
                expect(4).toBeLessThan(5);
                expect(4).toBeLessThanOrEqual(4.5);
                expect(4).toBe(4);
                expect(4).toEqual(4);
                
              }));
        test("adding floating point numbers", (function () {
                var value = 0.1 + 0.2;
                expect(value).toBeCloseTo(0.3);
                
              }));
        test("the shopping list has beer on it", (function () {
                var shoppingList = [
                  "diapers",
                  "kleenex",
                  "trash bags",
                  "paper towels",
                  "beer"
                ];
                expect(shoppingList).toContain("beer");
                expect(shoppingList).not.toContain("BEER");
                
              }));
        test("there is no I in team", (function () {
                expect("team").not.toMatch(/I/);
                
              }));
        test("but there is a 'stop' in Christoph", (function () {
                expect("Christoph").toMatch(/stop/);
                
              }));
        test("id should match object", (function () {
                var obj = {
                  id: "111",
                  product: "Test",
                  url: "https://jestjs.io/"
                };
                expect(obj).toEqual(expect.objectContaining({
                          id: "111"
                        }));
                expect(obj).toEqual(expect.not.objectContaining({
                          title: "Test"
                        }));
                
              }));
        test("String containing", (function () {
                expect("abcdefghijk").toEqual(expect.stringContaining("abcde"));
                expect("abcdefghijk").not.toEqual(expect.stringContaining("abce"));
                
              }));
        test("String matching", (function () {
                expect("abcdefghijk").toEqual(expect.stringContaining("abcde"));
                expect("abcdefghijk").not.toEqual(expect.stringContaining("abce"));
                
              }));
        
      }));

describe("Array Containing", (function () {
        var expected = [
          "Alice",
          "Bob"
        ];
        it("matches even if received contains additional elements", (function () {
                expect([
                        "Alice",
                        "Bob",
                        "Eve"
                      ]).toEqual(expect.arrayContaining(expected));
                
              }));
        it("matches even if received contains additional elements", (function () {
                expect([
                        "Bob",
                        "Eve"
                      ]).toEqual(expect.not.arrayContaining(expected));
                
              }));
        it("does not match if received does not contain expected elements", (function () {
                expect([
                        "Bob",
                        "Eve"
                      ]).not.toEqual(expect.arrayContaining(expected));
                
              }));
        
      }));

describe("stringMatching in arrayContaining", (function () {
        var expected = [
          expect.stringMatching(/^Alic/),
          expect.stringMatching(/^[BR]ob/)
        ];
        it("matches even if received contains additional elements", (function () {
                expect([
                        "Alicia",
                        "Roberto",
                        "Evelina"
                      ]).toEqual(expect.arrayContaining(expected));
                
              }));
        it("does not match if received does not contain expected elements", (function () {
                expect([
                        "Roberto",
                        "Evelina"
                      ]).not.toEqual(expect.arrayContaining(expected));
                
              }));
        
      }));

var sum = Sum$RescriptMonorepo.sum;

export {
  sum ,
  drinkAll ,
  
}
/*  Not a pure module */
