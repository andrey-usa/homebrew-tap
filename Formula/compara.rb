class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://andrey-usa.github.io/compara/"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.9.0/compara-x86_64-apple-darwin.tar.gz"
      sha256 "072d817f8e828e52c829da8dfc755e928bc68f79e04b9dea4ccac9cf8bf609aa"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.9.0/compara-aarch64-apple-darwin.tar.gz"
      sha256 "bae42b1cd0d6c2f4aade0fc7cd212ecb572ef38d65d26638c2f26cf027bf6c70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.9.0/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36dc1fcc5b4e15ee8cc3dca70ba29c1e64e4560f90d1ae29633f7d826f6c2c30"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.9.0/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e9a5e16a7fe73b3e5cbdd89af497ba6b305d61e4de0cbb5bfccef068f84fd23"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
