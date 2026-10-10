class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "c4298e082ca8cf2a4ac7abd22f8b91b50239cea5bd86fc3c2827cd2ccc21906b"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "cae0108b4a362e88f0e6f5d571b3fe98739242102a2c05a6ced221ea1a694035"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba2a2c3e8269b3854cb87b3ae4d3ceab04e1b78bf4f4467e7272e2f09d256140"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ccd5d53f2e26d105ebd8e2c5a85cde5dd61504f798c9b40a713d34b1047dfd2"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
