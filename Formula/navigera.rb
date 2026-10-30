class Navigera < Formula
  desc "Drive headless Chrome from the shell, one command per step: a native Rust CDP CLI for AI agents (accessibility-tree refs, sessions, tabs, iframes, dialogs) plus a JSON-lines serve mode."
  homepage "https://github.com/andrey-usa/navigera"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.3/navigera-x86_64-apple-darwin.tar.gz"
      sha256 "ebdd49fa9bb3a236e77f8a4c1fa3d1ee8d78864e5ec9a2bf43f41a8748cc0bf7"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.3/navigera-aarch64-apple-darwin.tar.gz"
      sha256 "5f566cbe5afa6f7d79e0cf88ee5163ab685aac2a7bfe48e672cf5428bd3a08b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.3/navigera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9144683227a80d96939870993f787764ecfb5996f9064dc9da3c8622701c8ec9"
    end
    on_arm do
      url "https://github.com/andrey-usa/navigera/releases/download/v0.6.3/navigera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ba99e83ab10129cdea4ef7ec5a749f46705c9862b46f76087e21129e0636a8f"
    end
  end

  def install
    bin.install "navigera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/navigera --version")
  end
end
