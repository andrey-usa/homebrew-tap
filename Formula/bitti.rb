class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://andrey-usa.github.io/bitti/"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.3/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "a85e706829a81a5268f78656ae1e9b532622ea737f2fbe45424d8879587ba45e"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.3/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "1a4c2589229d484734664ca311e9f4626b194877f689669ba0ccba0a9b7b523f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.3/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0062f35f825731957f7ea721eb0babfbec594663cc9f550a88b332c4da01e87b"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.3/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d01912a70675146b5ecdab921ed98844e3cb2f9bf5b57f031627fa03a9043616"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
