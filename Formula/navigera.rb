class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.2/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "f7f8d6dd0d07e4e7699dd0ae044b5eab6515e28382c2f83d79b3a7750e1df43d"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.2/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "cf7b400f61f6da18b180e2ed4cb2121c04e8632219821b0226b291593176205b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.2/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef83d2aa788360d6e0f48f8160dd237b98139ef21f347ddbf946f61b98a29101"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.2/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "24e7432bfaafa885242b10438743e425c63a842efcff4b9ab646fd3efb7420ef"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
