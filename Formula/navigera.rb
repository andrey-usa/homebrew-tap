class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.1/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "bb2cd5e4f55fc8127f52535c52a0f2549aaec84585b9bf740f028c33ce2f740e"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.1/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "a1ac55a9782a0a7bb0bdf00922843d53f846063b5c9e1a99dabe8696e8efc9d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.1/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91b85eadcfecd1bfc9deec7d8347b1c36291e11694e13df7b98b7a5974088f61"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.4.1/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dfc092a20838a53048c12819634faf921b99b55831d60bc48a7372a947b4d70f"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
