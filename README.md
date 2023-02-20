# Echidna-Linking
Work around example for using linked/public libraries with the echidna smart contract testing tool


A quick work around for getting a contract system with linked libraries tested using echindna.

# Steps:

1. Compile with ```solc --bin A.sol```

2. In the deployBytecode.yaml file, copy the library code into the first slot, and choose a random address for it to be deployed to

3. Replace the linker placeholder for the A contract with the address you decided on for the library. The placeholder looks something like ```__$2c2d011a430e33a74546001f5fb55174e4$__```. Make sure to remove the "0x" from the address before adding it in the placeholder

4. Run your echidna tests with ```echidna-test deploy.sol --config=deployBytecode.yaml --contract=Test```

