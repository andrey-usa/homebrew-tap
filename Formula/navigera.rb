class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://andrey-usa.github.io/navigera/"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.12.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "c6612c8137715bd2071c2a66ae31b4afd6a5b51d1434a0692b20fa80988935e0"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.12.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "bd2d5d5b98ce2d55c08eb741e1bb669bd9dffe19c6a59db097a9d9cf542fa762"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.12.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04a0a4a5fc12a10b51adedf9fbeb0fe566babed43816deabdb0cb7f0a7724956"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.12.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8e3601fdf6c7781e16317056b25f78c184ceeef0aa0a3605e175607ec10aa536"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
