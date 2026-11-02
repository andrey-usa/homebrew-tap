class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.7.1/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "d56c8897feb01cb8af9cb654f34eb65f21ac87e3e32b1b62738c30f50a6c5071"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.7.1/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "bf45678333e60dcfa0c19b55db64ceec9eb2f7c28baf9910ab32387b73331ed0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.7.1/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e9b6a661aee24be519b6d45d5791cd44761a12db78ddad0d40a8a772cf50a76"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.7.1/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "99d6666b99702c4df0818e6168180a4301f4cb58bcfa334cdf344ba1d4aaf54c"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
