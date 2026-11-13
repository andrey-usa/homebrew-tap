class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.13.1/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "241ba04ebff2547367f5701a762e31a1fa566f0c2f74a5f1a2eeabb1251468d7"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.13.1/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "0e0cb9a0a186a28ab1b6c3f87f893fc8df243e57606b56341b86d2cf732f72df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.13.1/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "077a37326e37a1d31f8706474f192a37081fbdb668ee7fdca2b46f108ba8f871"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.13.1/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "189a2706b308c5c73988b45fcfca007241c350099c9ccf89c4739273ad745f12"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
