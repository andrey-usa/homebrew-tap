class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.4/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "722f65ff746947a3cb5efff2073a69804704ed30b79bd4ba60717f4ad5c9c780"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.4/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "67c5fae55b81c907c5f6f708ebbed2e1aa876c66f76354f2ee2775c81288930d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.4/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7aabdd622a9af851c3ee02d27cdfeed59c640b9c3109d877f5605640b3c99497"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.4/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9728a95fed0d7c5f3de876904e655e8346ce58ce7266a669d1a71c577a23d35"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
