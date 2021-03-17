module.exports = {
  collectCoverageFrom: [
    '**/*.{js,jsx}',
    '!**/node_modules/**',
    '!**/__tests__/**',
  ],
  // testMatch: ["**/__tests__/+([a-zA-Z0-9_-]).@(bs|bsc).@(js|ts|tsx)", "**/__tests__/+([a-zA-Z0-9_-]).@(js|ts|tsx)"],
  setupFilesAfterEnv: ['<rootDir>/jest.setup.js'],
  transformIgnorePatterns: [
    "node_modules/(?!(bs-platform)/)"
  ],
  testPathIgnorePatterns: ['/node_modules/', '/.next/'],
  transform: {
    '^.+\\.(js|jsx|ts|tsx)$': '<rootDir>/node_modules/babel-jest',
  },
  snapshotSerializers: [
    '@emotion/jest/serializer' /* if needed other snapshotSerializers should go here */
  ]
}