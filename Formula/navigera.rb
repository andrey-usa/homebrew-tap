class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.9.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "7d49470dbfcf14e764f2c22f5eb7047ae099591a790b53db72a2b4b79a2eb515"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.9.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "2c3443efe193262d4425842dedae450955ffb5e8b6c3637e9605423fcb5443af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.9.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc44106182d5d0be7b96eac4ce07fc8e41d613dc3504b0e55a7b30cff3e4d8ff"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.9.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bebdef066db9bd8c617d1bb83282cb61d97fa732f663cd3bf241c09e584f0713"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
