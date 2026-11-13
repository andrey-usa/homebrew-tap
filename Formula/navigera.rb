class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.13.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "62a1c7ed4d1b94498208e4dbc7950f504d7871bf8aea539ec3a075e853deaf41"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.13.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "89ffa7edad03d891727a6332ef1873ccd9d8a6d7e5d1fe7f74f76fd62eff9439"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.13.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca9ef96312da7da88f6e5e07567529c87e51cc7e139846629f9df2f2585c02be"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.13.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ccf2fda1ae0bc1bd4cada3684b4f68c607fc32ceae96ee7ebc3e10649a81e7c1"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
