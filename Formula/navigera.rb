class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.1/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "984753d9717b81da951922a764647230ad933e42a969bcbdbbaa9518f6b4fe73"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.1/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "95047c272749b6d2f76eaef67590d48a34b8114d4c8982f8a997eadcb766c82b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.1/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7caf72c43f47f6e4e39ea312e3237183c98734079842caec208c935fa96d669f"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.1/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "374baf480b148a82a553d34591f6a88a948db907616d8db51e01a04a1588c8cf"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
