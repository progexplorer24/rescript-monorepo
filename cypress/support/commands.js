// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })

function unquote(str) {
  return str.replace(/(^")|("$)/g, '');
}

Cypress.Commands.add(
  'active',
  {
      prevSubject: 'element',
  },
  (el, property) => {
      const win = el[0].ownerDocument.defaultView;
      const before = win.getComputedStyle(el[0], 'active');
      return unquote(before.getPropertyValue(property));
  },
);
