
require "language/node"

class CopilotCli < Formula
  desc "GitHub Copilot CLI"
  homepage "https://github.com/github/copilot-cli"
  url "https://registry.npmjs.org/@github/copilot/-/copilot-1.0.14.tgz"
  sha256 "a1043b4e92b20d7f304061546116c10bec5e36f8839e4e538bcdab3f5bc6f373"
  version "1.0.14"
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
