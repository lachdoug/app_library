Engines Library Server
======================

The Engines Library Server provides:
- a public JSON api for listing app blueprint records
- an admin CRUD interface for managing app blueprint records

API
---

GET /api/v0/apps - list published apps
GET /api/v0/unpublished_apps - list unpublished apps

Apps listed in array of hashes.
App has keys:
  :id - library app record id
  :featured - true of app warrants specific attention, e.g. is a flagship title for the library. (To allow engines website to identify apps for home page.)
  :label
  :description
  :readme
  :website_url
  :blueprint_url
  :icon_url_small - 64x64 icon (used by engines library)
  :icon_url - 256x256 icon (used by mgmt gui)

Seed
----

Creates default admin user with username: 'admin' and password: 'password'

Framework
---------

Rails 5

Environment
-----------

ENV['APPLICATION_TITLE']
default is "Engines Library"

ENV['BACKGROUND_COLOR']
default is "#fff"

ENV['TEXT_COLOR']
default is "#333"
