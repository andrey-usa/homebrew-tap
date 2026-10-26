class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.2/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "d8faa6491771070e887b6feb2506772ccff1d0155b029261b7cf4b48fca0571e"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.2/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "426b8533ee4def1ac15ce1f8c39495d1bffe2fb2424101a355536ab44f418214"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.2/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "364df878543e48c5777f547c43a32fc46e8c6581d626336bb441a806a5697af7"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.2/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "63496d013615abcf6ae830dae9792268cd244b64a45a9b95ba501fa646590e9a"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
