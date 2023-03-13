# MediaWiki Docker images
 
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/ProfessionalWiki/mw-docker/build.yml?branch=master)](https://github.com/ProfessionalWiki/mw-docker/actions?query=workflow%3A"Docker+Build")
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/prowiki/mediawiki)](https://hub.docker.com/r/prowiki/mediawiki)
[![Docker Pulls](https://img.shields.io/docker/pulls/prowiki/mediawiki)](https://hub.docker.com/r/prowiki/mediawiki)

This repo contains Dockerfiles to build MediaWiki Docker images.

We also provide [fully managed MediaWiki hosting](https://www.pro.wiki/). Start your free trial today.

## [prowiki/mediawiki](https://hub.docker.com/r/prowiki/mediawiki)

    docker pull prowiki/mediawiki:37

<table>
	<tr>
		<th>Image tag</th>
		<th>Description</th>
		<th>Current MediaWiki version</th>
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
        <td>1.35.9</td>
	</tr>
</table>

## Differences with official MediaWiki images

* Latest PHP
* Luasandbox
* Extra packages

## Other MediaWiki images

For the official MediaWiki Docker images maintained by The Wikimedia Foundation, see https://github.com/wikimedia/mediawiki-docker

