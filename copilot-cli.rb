
require "language/node"

class CopilotCli < Formula
  desc "GitHub Copilot CLI"
  homepage "https://github.com/github/copilot-cli"
  url "https://registry.npmjs.org/@github/copilot/-/copilot-0.0.371.tgz"
  sha256 "5e7351834782eb9f2025cba92dbe105ac6e02d8d066ea8a0b23a8a8d52d7dd8c"
  version "0.0.371"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/copilot", "--version"
  end
end
