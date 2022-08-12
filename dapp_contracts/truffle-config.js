module.exports = {
  networks: {
    development: {
     host: "127.0.0.1",     // Localhost (default: none)
     port: 7545,            // Ganache RPC Server port
     network_id: "*",       // Any network (default: none)
    },
  },
  contracts_directory: "./contracts",
  compilers: {
    solc: {
      version: "0.8.16+commit.07a7930e.Darwin.appleclang",
      settings: {
        optimizer: {
          enabled: false,
          runs: 200
        },
      },
    },
  },
  db: {
    enabled: false,
  },
};
