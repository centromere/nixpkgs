{ fetchFromGitHub
, rustPlatform
}:
rustPlatform.buildRustPackage rec {
  pname = "foundry";
  version = "nightly-2023-10-23";

  src = fetchFromGitHub {
    owner = "foundry-rs";
    repo = "foundry";
    rev = "ba6c85112f4c34fc8eb081645bad278f48343ec4";
    hash = "sha256-fiohVq1sp2bEiesLlSONF4LGjO3nFiaKKZF7XDqPRtY=";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
    outputHashes = {
      "ethers-2.0.10" = "sha256-2VxQQIWaP6+QL7c2o9VLGlZGTG77697xBmtrXXfSzHE=";
    };
  };
}
