class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "5a8d36e09cce48e2a6890e5f173788451e043c65bc9994b170025e0a35af8a9c"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "c9a0e767d7179c9d8258466e51ccf7bfdce84860ce29ae679693e29172d43836"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6a0772755cb3a0892db4dac97c5b6e6926800136dbdd3653fecd4d2dfac4b50b"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5793c2e827a7840a5f01ed2c25dd74825f489019fcdcf05c562860ec10bde7d5"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
