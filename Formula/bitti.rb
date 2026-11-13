class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://andrey-usa.github.io/bitti/"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.2.1/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "e619c749179276bd42f9d9d64a1ee612da295bd0b95c6ce6270326202697ee51"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.2.1/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "2d9fc80bb7a676273d2ad998bef4e4deeed5e470e52ac9a36421e15b82d4cf15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.2.1/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "21779163d4211183374806533a7ab26c7999d27b796ff6497b756e8fdbcf2828"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.2.1/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a17489485008e63debe064b1c3d4eadd35bfe24f98cf1b8b667c69c9d81f29a"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
