# Flutter Notes Dapp

This is an example project of a Flutter app that communicated and interacts with a local Ethereum network running in Ganache. The app is a simple Notes app allowing users to create, modify and delete notes, all of this CRUD operations occuring in a descentralized network.

## Flutter app

The app is located under the `app` directory. It contains all of the necessary files for the app tu run. To run the app `flutter run`.

The app communicates through a Web3 client with a local dev Ethereum network running in `http://127.0.0.1:7545` by Ganache.

## Dapp contracts

The `dapp_contracts` directory contains all the necessary files to create, compile and migrate the contracts to the Ganache network.

Every time the contracts are migrated the files from the `dapp_contracts/contracts` folder have to be replaced in the `app/contracts` folder.
