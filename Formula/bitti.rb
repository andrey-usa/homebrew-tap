class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://andrey-usa.github.io/bitti/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.0/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "49f6c556ae928a14f288dc6c6b54e18b5af805261b9d029d4d74865aae05aded"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.0/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "1ddb8cfab12b7442f92fd9c1624f1e658e753c393c194587c44073548fac255a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.0/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "23e7d189278e4d1133ec1e0f36624f969c441d87b444c178b8192d03e86b7bae"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.0/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd236c1a8aad3ec380e8566685f2df8ccdaac066aad50e1cf1db5144575d74c4"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
