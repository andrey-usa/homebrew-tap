class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "3cea0fb990bef9f8f4d099b980199e71eb433f39e693f3f159bb351b0b81377d"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "8015990f3cc8b0f2077b4d1e110ec410f9aca83a767d88eb86c558b3353ffa43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d90df2ac80ecff271053e6c3f4257a58707e04cbca8cb0fc121714b7f96f1c5"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "528a0645b4e185d4ec96a6b227c66fcbf96169f0aa09b6380d60d282f3451d45"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
