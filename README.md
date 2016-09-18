Engines Library Server
======================

The Engines Library Server provides:
- a public JSON api with end points for listing app blueprint records
- an admin CRUD interface for managing app blueprint records

Rails 5 application.

API
---

Apps listed in array of hashes.
Keys "id", "featured", "title", "description", "readme", "website_url", "blueprint_url", "icon_url_small", "icon_url".

GET /api/v0/apps - list published apps
GET /api/v0/unpublished_apps - list unpublished apps

Database
--------

Creates default user with username: 'admin' and password: 'password'

Environment
-----------

ENV['APPLICATION_TITLE']
default is "Engines Library"

ENV['BACKGROUND_COLOR']
default is "#48d"
