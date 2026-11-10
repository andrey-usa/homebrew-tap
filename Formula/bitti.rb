class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://andrey-usa.github.io/bitti/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.2.0/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "0f14b22dab55b5b7261a00f0560e7869bc01058cad1a8a5bdb70dd8a0dbf4ae3"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.2.0/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "40260929d193e3ef0ca93f2057722d75f803eafda5bab5f02e0ed1d2fcb924af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.2.0/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24f56873fda7a7bfa8abb9026af20af8cc389987997fda32b4a58c52f89751df"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.2.0/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c55e376a12ba51b1dd5b3d9e2acf122a1cc915408727ed251699ddeb45c2539d"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
