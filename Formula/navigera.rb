class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.17.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "92ddaa28a16ea73d6832a12a383a0ff90ad4960fc2c5caf0e747a3fb622cfcde"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.17.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "9df7b6e249fc4f29fb2a336dc388a9c74863ee7a4c4c737116d1d62db5f1d57e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.17.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43a336aae4201922a78bf5a31d558426a61819760431b12174e736458d34b9e6"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.17.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ff52726c64f0cd09b147670249d66d9b721b72a9a94d371f9662d6f445f982f"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
