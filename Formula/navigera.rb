class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.10.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "ab02ab38c8758983b7c0976f5cd6fe2b51a201eaecd5dcf4063acdb17c694650"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.10.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "5a0dcde7da8674bebe6314db37b120426ff03d5ac3f730a21e22580fce4a95ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.10.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85739c89ff6b074fa43b96b075d084bdb409b2b59bd3575afb45aa73241e7628"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.10.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91c5b789c6cf1b52534649f837b8f2597d182f46c68d60da6573010e84b61c8a"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
