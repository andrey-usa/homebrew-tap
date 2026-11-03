class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.8.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "9b8f2edb5f810428ef8ee0a6fd61cb543c87cc3a91be56fcdb35559b523b1459"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.8.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "10a6cb00407674e545211cf2cac387d4f7bfdae54014bd39e5f9339e05b5077e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.8.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75e20c60f598103d060edac8847d65db90af1070994e9a137a112ccb361d7090"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.8.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c060a477128cc47528826893a311ab68234d18665d6ff94b715b39133cf4a681"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
