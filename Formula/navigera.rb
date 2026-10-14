class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.1/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "0aea18a092a82fb37abc1e290233c446bdec8bce596845407d9c7e1e0e6dfd61"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.1/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "ffff723e31f04296e74cc18c04988662a02585075b9711d195db104816c8c8da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.1/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f54f6b448297c436c8c79c08c6f0dadb062cba6b58f2c9b9d8380f2f9f29d056"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.1/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "959bf92965f9a2f159f78da1a279dbda3d4c29076d55d4acdf3dc1a5750dae4e"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
