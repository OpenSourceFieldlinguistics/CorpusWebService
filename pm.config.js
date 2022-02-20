module.exports = {
  apps: [{
    name: "CorpusWebService",
    script: "./bin/onlycouchdb.js",
    env: {
      NODE_ENV: "development"
    },
    env_production: {
      NODE_ENV: "production",
      PORT: '3186'
    }
  }]
}
