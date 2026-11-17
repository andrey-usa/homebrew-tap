class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.15.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "5d078bed710de755ca7a805a84dcea775ac620decb6544be605166bf3e7c1c07"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.15.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "73a3de8dde9627737dd18b93b963301034e64d9725f504b27766c056cbf60f48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.15.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2decc174150d186aabd48cbb75a25b55861add1a5e4a3289031816de3dd382a6"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.15.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0b83cdb5f298a8c249251db0ba0f456d44ab10a6ef3a98a5bb3ab0a76d91115"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
