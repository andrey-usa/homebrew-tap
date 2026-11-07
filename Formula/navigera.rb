class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.9.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "e3749eb473b27863629c205a31fea2e21188126eac26acec79de8ff1f43bef19"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.9.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "0339841729cb4f5908f89a08ba24d5e973d982eb058dcdb8b601b2fb9b3812db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.9.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a14d2c40fc519d868426adae9d7b1a1e88e4c303d90e79838cbb415262cd631"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.9.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c39cddf13cbdffa289656a56476aa25a9d0c5e07498ae20fe0e16eff30989da"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
