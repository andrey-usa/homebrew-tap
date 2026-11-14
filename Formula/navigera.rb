class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.14.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "382ae803f63f8a80382ceeb3057c668c0cf7eea19cfe11ff35e86b3a411addfc"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.14.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "2998015b3ed347e89259f43fc0f221096366df3b6d19fd4ddf242c94442bed17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.14.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fdfa492712d10f0f10417846bb2fd561a9c42e99480cd5b0218e70739a2a916"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.14.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "632ca2f196560a26fb63723e0b06c3ec2934a3d10c85ed73eebfc6d20b14c3ed"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
