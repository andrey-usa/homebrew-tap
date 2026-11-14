class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://andrey-usa.github.io/bitti/"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.2/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "5dd5313f09140d31a1e0d3c96f0f8b06ccc529d7321bbe6ce05bc25387e86feb"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.2/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "82ca7cb227b68ce9593896f396a6adb5a4978bc7c1392ab197b372fb527e61fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.2/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b7df20e0d3cd6e78825a087571268c89bdfb625905bb9154ee8893be69aa7a9"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.2/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ae3f73cdad3a18006d4d4bf6e9126c6c74214baed76273986ba3f92bb3f394dc"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
