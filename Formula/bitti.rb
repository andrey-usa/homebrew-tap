class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://andrey-usa.github.io/bitti/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.5.0/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "0f3fea1cc5d26d9257918d92d24d06a71e183b161a35f6feb7b70f5a7c8c409e"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.5.0/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "a7f3b0090fccb54751d344285b079439fe06cfc684c75afa53a83e177d54a28c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.5.0/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34b65621d111d8422f9801421bef2772e5a54c7498e6073fb8145b028ff88eff"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.5.0/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5284d064750938cb2878ea758036b39fa821c9ad1025c74cb8dcee599b956004"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
