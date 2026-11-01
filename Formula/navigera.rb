class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.7.0/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "4eebe4e98947bbb6b93e83195eb0e3fa070cabdfcc36d9aa4af396bfe918c655"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.7.0/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "4a75a40111fd1dced6b041a3a4611fea80d7b53944c709a491d6810a6560161e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.7.0/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82d766666c11ee3dff560bf1407c056008c968de30b27e617dfb0e9a36f5147b"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.7.0/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5d042e0908385e9309b3e2ddecbe3dcba568b1ecd3886fe00c19d5a1a489fc2"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
