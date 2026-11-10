class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.11.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "1cbae9e1a47a3b9f527b736e74919d8ea5aaff91c991cad5efd9878d150eca17"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.11.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "11692f7f935439a5a45b084d0e01f076dd35be4e41ab2544f907f9275a658087"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.11.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8505c399a6d5a21c8901143e85a302b7e24f8286e8d87caf1e673e92aa8b5c6d"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.11.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9856be32277e77c9b9fb2d4ead663e3f9e2aa0daf43738a168b9c13529f8ea52"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
