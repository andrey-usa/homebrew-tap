class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.14.1/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "b92032342baf680de547eaa188f922205ea398e97153301833ef1b7ad7332dbb"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.14.1/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "8ccba2aea6ea91568d9736fbf7cff107045fac6431b92499138825ade5d33f2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.14.1/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d9852c762e6d4c607650e124945dce384c4eb93588e71cc370c928d34e265e0"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.14.1/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c041769b2cd0e185e84a3629ea004a581a06959d896aa42237bba85226482ab"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
