class Countdown < Formula
  include Language::Python::Virtualenv

  desc "A simple countdown app in terminal powered by Textual."
  homepage "https://textual.textualize.io"
  license "MIT"
  head "https://github.com/jaxvanyang/countdown.git", branch: "main"

  depends_on "python@3.13"

  # Additional dependency
  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/04/1e/b832de447dee8b582cac175871d2f6c3d5077cc56d5575cadba1fd1cccfa/linkify_it_py-2.0.3-py3-none-any.whl"
    sha256 "6bcbc417b0ac14323382aef5c5192c0075bf8a9d6b41820a2b66371eac6b6d79"
  end
  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/42/d7/1ec15b46af6af88f19b8e5ffea08fa375d433c998b8a7639e76935c14f1f/markdown_it_py-3.0.0-py3-none-any.whl"
    sha256 "355216845c60bd96232cd8d8c40e8f9765cc86f46880e43a8fd22dc1a1a8cab1"
  end
  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/a7/f7/7782a043553ee469c1ff49cfa1cdace2d6bf99a1f333cf38676b3ddf30da/mdit_py_plugins-0.4.2-py3-none-any.whl"
    sha256 "0c673c3f889399a33b95e88d2f0d111b4447bdfea7f237dab2d488f459835636"
  end
  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end
  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/fe/39/979e8e21520d4e47a0bbe349e2713c0aac6f3d853d0e5b34d76206c439aa/platformdirs-4.3.8-py3-none-any.whl"
    sha256 "ff7059bb7eb1179e2685604f4aaf157cfd9535242bd23742eadc3c13542139b4"
  end
  resource "pygments" do
    url "https://files.pythonhosted.org/packages/c7/21/705964c7812476f378728bdf590ca4b771ec72385c533964653c68e86bdc/pygments-2.19.2-py3-none-any.whl"
    sha256 "86540386c03d588bb81d44bc3928634ff26449851e99741617ecb9037ee5ec0b"
  end
  resource "rich" do
    url "https://files.pythonhosted.org/packages/0d/9b/63f4c7ebc259242c89b3acafdb37b41d1185c07ff0011164674e9076b491/rich-14.0.0-py3-none-any.whl"
    sha256 "1c9491e1951aac09caffd42f448ee3d04e58923ffe14993f6e83068dc395d7e0"
  end
  resource "textual" do
    url "https://files.pythonhosted.org/packages/00/2f/f7c8a533bee50fbf5bb37ffc1621e7b2cdd8c9a6301fc51faa35fa50b09d/textual-5.3.0-py3-none-any.whl"
    sha256 "02a6abc065514c4e21f94e79aaecea1f78a28a85d11d7bfc64abf3392d399890"
  end
  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/8b/54/b1ae86c0973cc6f0210b53d508ca3641fb6d0c56823f288d108bc7ab3cc8/typing_extensions-4.13.2-py3-none-any.whl"
    sha256 "a439e7c04b49fec3e5d3e2beaa21755cadbbdc391694e28ccdd36ca4a1408f8c"
  end
  resource "uc-micro-py" do
    url "https://files.pythonhosted.org/packages/37/87/1f677586e8ac487e29672e4b17455758fce261de06a0d086167bb760361a/uc_micro_py-1.0.3-py3-none-any.whl"
    sha256 "db1dffff340817673d7b466ec86114a9dc0e9d4d9b5ba229d9d60e5c12600cd5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test countdown`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
