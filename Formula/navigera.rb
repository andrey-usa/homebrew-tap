class Navigera < Formula
  desc "Drive headless Chrome and Electron apps from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.10.1/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "afe1b3f699a9ce0a0dcbf97b4569d97bb718bd9aa712527ffee0fc590cf2f135"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.10.1/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "72485159cbe5a6958e5cda7a5ef88ae041ee0d423848eeb953a513a98fe36bea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.10.1/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b6989a3dde6b2ae89301cc0973ee30a0fe72c9eceb16158dc4d09a79879f9750"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.10.1/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1245d909671021f858f83a1e8fee268a679239953968842bc7284f0c62acecd8"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
