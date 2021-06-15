const {defaults} = require('jest-config');

module.exports = async () => {
  return {
    verbose: true,
    moduleFileExtensions: [...defaults.moduleFileExtensions, 'mjs'],
    testMatch: ["**/__tests__/+([a-zA-Z0-9_-]).@(js|mjs)"],
    setupFilesAfterEnv: ['<rootDir>/jest.setup.js'],
    transformIgnorePatterns: ["node_modules/(?!(rescript)/)"],
    testEnvironment: "jsdom",
    transform: {
      '^.+\\.(js|mjs)$': '<rootDir>/node_modules/babel-jest',
    },
    testPathIgnorePatterns: ['<rootDir>/node_modules/', '<rootDir>/.next/', '<rootDir>/lib/'],
    collectCoverageFrom: [
    '**/*.{js,mjs}',
    '!**/node_modules/**',
    '!**/__tests__/**',
    ],
    snapshotSerializers: [
      '@emotion/jest/serializer' /* if needed other snapshotSerializers should go here */
    ]
  };
};