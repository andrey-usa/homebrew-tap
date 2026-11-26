class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.18.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "4bbe29502f422f8fece8cecadea70e7406d3277cd5cbaaa30211ef297fc4ef36"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.18.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "997bbad7fe37725c0b03236906d17e891b7c838154fccf96df45ca6b4611cccc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.18.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17e6d1c9fd10d2fa18ea2db5cb54731e9fa575ec8b5c7c01205f09ac2703ab94"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.18.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e707f251d9502831915e48a4629c5d840cdae0fbe91805331b133c4399277b84"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
