# MediaWiki Docker images

[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/ProfessionalWiki/mw-docker/build.yml?branch=master)](https://github.com/ProfessionalWiki/mw-docker/actions?query=workflow%3A"Docker+Build")
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/prowiki/mediawiki)](https://hub.docker.com/r/prowiki/mediawiki)
[![Docker Pulls](https://img.shields.io/docker/pulls/prowiki/mediawiki)](https://hub.docker.com/r/prowiki/mediawiki)

This repo contains Dockerfiles to build MediaWiki Docker images.

This repository is maintained by [Professional.Wiki](https://professional.wiki/). We provide professional
[MediaWiki hosting](https://www.pro.wiki/)
and [MediaWiki software development](https://professional.wiki/en/mediawiki-development).

The Docker images are provided as-is, without any warranty or guarantees.

## [prowiki/mediawiki](https://hub.docker.com/r/prowiki/mediawiki)

	docker pull prowiki/mediawiki:39

<table>
	<tr>
		<th>Image tag</th>
		<th>Description</th>
		<th>Current MediaWiki version</th>
	</tr>
	<tr>
		<td><a href="https://hub.docker.com/repository/docker/prowiki/mediawiki/tags?page=1&name=39">39</a></td>
		<td>MediaWiki 1.39.x, PHP 8.1.x, MySQL, Apache</td>
		<td>1.39.5 (2023-09-28)</td>
	</tr>
	<tr>
		<td><a href="https://hub.docker.com/repository/docker/prowiki/mediawiki/tags?page=1&name=37">37</a></td>
		<td>MediaWiki 1.37.x, PHP 8.0.x, MySQL, Apache</td>
		<td>1.37.6</td>
	</tr>
	<tr>
		<td><a href="https://hub.docker.com/repository/docker/prowiki/mediawiki/tags?page=1&name=37php74">37php74</a></td>
		<td>MediaWiki 1.37.x, PHP 7.4.x, MySQL, Apache</td>
		<td>1.37.6</td>
	</tr>
	<tr>
		<td><a href="https://hub.docker.com/repository/docker/prowiki/mediawiki/tags?page=1&name=35">35</a></td>
		<td>MediaWiki 1.35.x, PHP 7.4.x, MySQL, Apache</td>
		<td>1.35.13 (2023-09-29)</td>
	</tr>
</table>

## Differences with official MediaWiki images

* Latest PHP
* Luasandbox
* Extra packages
* A guarantee that we will not [switch PHP versions and break your MediaWiki extensions](https://github.com/wikimedia/mediawiki-docker/pull/117)

## Other MediaWiki images

For the official MediaWiki Docker images maintained by The Wikimedia Foundation, see https://github.com/wikimedia/mediawiki-docker
