&nbsp;
<p align="center">
	<a href="https://writefreely.org"><img src="https://writefreely.org/img/writefreely.svg" width="350px" alt="WriteFreely" /></a>
</p>
<hr />
<p align="center">
	<a href="https://github.com/writeas/writefreely/releases/">
		<img src="https://img.shields.io/github/release/writeas/writefreely.svg" alt="Latest release" />
	</a>
	<a href="https://goreportcard.com/report/github.com/writeas/writefreely">
		<img src="https://goreportcard.com/badge/github.com/writeas/writefreely" alt="Go Report Card" />
	</a>
	<a href="https://travis-ci.org/writeas/writefreely">
		<img src="https://travis-ci.org/writeas/writefreely.svg" alt="Build status" />
	</a>
	<a href="https://github.com/writeas/writefreely/releases/latest">
		<img src="https://img.shields.io/github/downloads/writeas/writefreely/total.svg" />
	</a>
	<a href="https://hub.docker.com/r/writeas/writefreely/">
		<img src="https://img.shields.io/docker/pulls/writeas/writefreely.svg" />
	</a>
</p>
&nbsp;

WriteFreely is a beautifully pared-down blogging platform that's simple on the surface, yet powerful underneath.

It's designed to be flexible and share your writing widely, so it's built around plain text and can publish to the _fediverse_ via ActivityPub. It's easy to install and light enough to run on a Raspberry Pi.

[Try the editor](https://write.as/new)

[Find an instance](https://writefreely.org/instances)

## Features

* Start a blog for yourself, or host a community of writers
* Form larger federated networks, and interact over modern protocols like ActivityPub
* Write on a fast, dead-simple, and distraction-free editor
* [Format text](https://howto.write.as/getting-started) with Markdown
* [Organize posts](https://howto.write.as/organization) with hashtags
* Create [static pages](https://howto.write.as/creating-a-static-page)
* Publish drafts and let others proofread them by sharing a private link
* Create multiple lightweight blogs under a single account
* Export all data in plain text files
* Read a stream of other posts in your writing community
* Build more advanced apps and extensions with the [well-documented API](https://developers.write.as/docs/api/)
* Designed around user privacy and consent

## Hosting

We offer two kinds of hosting services that make WriteFreely deployment painless: [Write.as](https://write.as) for individuals, and [WriteFreely.host](https://writefreely.host) for communities. Besides saving you time, as a customer you directly help fund WriteFreely development.

### [![Write.as](https://write.as/img/writeas-wf-readme.png)](https://write.as/)

Start a personal blog on [Write.as](https://write.as), our flagship instance. Built to eliminate setup friction and preserve your privacy, Write.as helps you start a blog in seconds. It supports custom domains (with SSL) and multiple blogs / pen names per account. [Read more here](https://write.as/pricing).

### [![WriteFreely.host](https://writefreely.host/img/wfhost-wf-readme.png)](https://writefreely.host)

[WriteFreely.host](https://writefreely.host) makes it easy to start a close-knit community — to share knowledge, complement your Mastodon instance, or publish updates in your organization. We take care of the hosting, upgrades, backups, and maintenance so you can focus on writing.

## Quick start

WriteFreely has minimal requirements to get up and running — you only need to be able to run an executable.

> **Note** this is currently alpha software. We're quickly moving out of this v0.x stage, but while we're in it, there are no guarantees that this is ready for production use.

First, download the [latest release](https://github.com/writeas/writefreely/releases/latest) for your OS. It includes everything you need to start your blog.

Now extract the files from the archive, change into the directory, and do the following steps:

```bash
# 1) Configure your blog
./writefreely --config

# 2) (if you chose MySQL in the previous step) Log into MySQL and run:
# CREATE DATABASE writefreely;

# 3) (if you chose Multi-user setup) Import the schema with:
./writefreely --init-db

# 4) Generate data encryption keys
./writefreely --gen-keys

# 5) Run
./writefreely

# 6) Check out your site at the URL you specified in the setup process
# 7) There is no Step 7, you're done!
```

For running in production, [see our guide](https://writefreely.org/start#production).

## Packages

WriteFreely is available in these package repositories:

* [Arch User Repository](https://aur.archlinux.org/packages/writefreely/)

## Development

Ready to hack on your site? Get started with our [developer guide](https://writefreely.org/docs/latest/developer).

## Docker

Read about using Docker in the [documentation](https://writefreely.org/docs/latest/admin/docker).

## Contributing

We gladly welcome contributions to WriteFreely, whether in the form of [code](https://github.com/writeas/writefreely/blob/master/CONTRIBUTING.md#contributing-to-writefreely), [bug reports](https://github.com/writeas/writefreely/issues/new?template=bug_report.md), [feature requests](https://discuss.write.as/c/feedback/feature-requests), [translations](https://poeditor.com/join/project/TIZ6HFRFdE), or [documentation](https://github.com/writefreely/documentation) improvements.

Before contributing anything, please read our [Contributing Guide](https://github.com/writeas/writefreely/blob/master/CONTRIBUTING.md#contributing-to-writefreely). It describes the correct channels for submitting contributions and any potential requirements.

## License

Licensed under the AGPL.
