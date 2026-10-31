class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.5/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "eb31bea02cdc479349303ed29d0b102edfe06064fd1ff6dc768c4f7357ce8c3b"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.5/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "b24e8fe5111a6c0fcc6872c667e965859eb52743865f5f953e531f35e25e64af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.5/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7364573908da1b98bf6b277cc27466c1439fbda6cd3c9281e17dae8520e07b1e"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.5/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "afa823e74d297142aea9cd686cd5a153d4cbdc1eabcbac0e96c95cb9b7636a7f"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
