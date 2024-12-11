module.exports = {
    apps: [
      {
        name: "angular-app",
        script: "dist/my-angular-app/server/server.mjs",
      },
      {
        name: "pm2-web",
        script: "pm2",
        args: "web",
      },
    ],
  };