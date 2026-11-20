class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.16.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "72b71f830a13792f5fd11647cc0e87e8a2a5b23423e73af28aaa264ad20faa8f"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.16.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "55e07ec41ea7457f7566e818e1cfb7dc45dc7dbac0e51a8ac2890e88a1f7b570"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.16.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "402f476e9dd38478b202a22480f5328c2ee0a010b7f59f4825cc38beab0f1bb6"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.16.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75abaf30234aea978952eb56d6e436bcb9b0a2c9abe2773f9d64e16ac48763db"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
