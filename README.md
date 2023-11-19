<h1 align="center">Sphinx 1.0.0</h1>

<p align="center">Simple encryption for GameMaker Studio 2.3.2 by <a href="https://www.jujuadams.com/" target="_blank">Juju Adams</a></p>

<p align="center"><a href="https://github.com/JujuAdams/Sphinx/releases/">Download the .yymps</a></p>

<p align="center">Chat about Sphinx on the <a href="https://discord.gg/e9wrvnCWkK">Discord server</a></p>

&nbsp;

&nbsp;

Sphinx is a basic encryption system. It's suitable for rudimentary protection of game data but should not be used for storing confidential information, such as identifying personal details or banking details. This library is released under the MIT License, without warranty of any kind.

Remember that no security is unbeatable: it is a case of *when* security is broken rather than *if* it can be. Encryption just slows the process. Think carefully about what data you absolutely need to protect in your game and always export builds using YYC!

The method used to encrypt is:
1. Compress a buffer using GM's native zlib implementation
2. Use a PRNG to XOR bytes in the compressed buffer

Decryption is the reverse. The PRNG used is XORShift32 with a 64-bit key. This method resists casual attacks but will not stand up to a determined adversary. By default, the entire buffer is XOR'd, though this is ultimately overkill for very large buffers and deleterious for performance -`SPHINX_MAXIMUM_XOR_BYTES` can be set to limit how many bytes should be XOR'd.
