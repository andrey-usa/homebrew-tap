class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.5.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "9f3feed5bc744af3a772cbf2a9b1afa1ea0b40010b56482f32c49110295ed5c7"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.5.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "89be686d8b76b15eb1920012f7e1c25f667259e2fcebec234110d54690363638"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.5.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2add221b00a782f3a8a885d6c5ce728ce9aded97851879e447251ce17878b10d"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.5.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e7e3b0d112e36f81b64a6e68acfcf9739944334b28d5e6e543f4a0a3485b490"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
