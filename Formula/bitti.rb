class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://andrey-usa.github.io/bitti/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.4.0/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "5438f583a4108bf56b403c5013ed61e6b5f5d8d267ad7bf0445d5b0aa2e5b55f"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.4.0/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "c6fe570ccf360fb5cfae95a3a4a104e44d2282e2347d00041cfac6973929f44c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.4.0/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b08cc89ddf671d95324b356c7a343bd4d0d075ecfed0f2fb7ceb53e644358385"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.4.0/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e24e313f2448cd55ed3a6093d31b200c2bcb66503d411094e9788dec21e14eb"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
