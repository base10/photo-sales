# Photo Sales schema

## MVP

* Images
  * First pass
    * master file
      * This will point to an S3 bucket at first, would be nice to have a more
        general storage mechanism
    * pointers to responsive break point sizes
      * This will need to be generated on file upload, contingent on
        pre-determined size definitions.
      * I'll put this as a secondary concern, too. To start, I can use the full
        size file and a cut down / max version, then get it dialed in from
        there.
    * slug
    * title
    * description
  * Subsequent
    * Basic EXIF data
      * f stop
      * shutter
      * ISO
      * GPS info
      * date/time
      * Camera information
    * tagging
* users
  * guid (follow-up)
    *  I want to be able to create guest users and convert them later
  * name
  * email
  * `password_digest`
  * admin
* `guest_users` (follow-up)
* orders
  * one or more order items
  * user
  * amount (calculated)
  * status
  * subtotal (not sure here)
  * tax (not sure)
  * shipping + handling (not sure)
  * `shipping_address`
* order items
  * edition (at first)
    * Replace with a product, of which an edition becomes part of
    * Other products will be things like framed prints
  * quantity
  * amount
* editions
  * An edition needs to be available in order to be sold
  * If an edition is not available, it is considered sold out
  * Can be live or not live
  * Has dimensions
  * Has materials description
  * Has `lot_size` (secondary)
  * Has a number available (secondary)
  * cost in cents
* charges
  * user
  * order
  * amount
  * kind
    * purchase
    * refund
  * status
    * pending
    * successful
    * failed
* `order_addresses`

## Secondary

* Album Memberships
  * `image_id`
  * `album_id`
  * featured
* Albums
  * title
  * slug
  * description
  * Basic EXIF data (secondary)
    * f stop
    * shutter
    * ISO
    * GPS info
    * date/time
* featured images (not quite sure how I want to handle this)
	* For the album
	* Index
* Edition + product templates
  * Define typical offerings
  * Define a vendor, maybe
* User / sites
  * Offer a hosted system


## Notes

### Architecture / design choices

* Build it as a 12-factor app
* Clearance for application authorization
* Administrate as an admin layer
* Build separate work objects to handle shopping cart pieces.
  * I _could_ look at using something like Spree here, if only to inform how I'm
    building
* Will need something like Paperclip or an SFTP account to upload and process
  image assets
  * Will likely be helpful to have some manner of sidecar file that can pull the
    title and description from EXIF data
* Will need something like rmagick to generate the hi dpi image previews
* I want to be able to shift layouts on desktop and tablet pages depending on
  orientation of the device and the photograph
* I am notionally interested in using or looking at http://balderapp.com as a base
  for the gallery functionality.
  * Even if I don't use Balder, I think some of the concepts within will be
    illustrative
* I will want to have transactional email and a mailing list (MailChimp)
* I want to use Rails JS partials and Russian doll caching as much as practical
* I would like to use jQuery and possibly back that off to vanilla JavaScript,
  depending on how performance goes.
* Postgres for the data store.

### Testing

* Use unit testing as much as possible at the model layer
* Use brower-less controller tests to define interactions
* Have a few, select, browser-based tests to test key pathways

### Services

* Evaluate using Heroku vs. spinning up a second Digital Ocean server as an app
  server
 * Starting with Heroku at a base level seems like it'd be smart, then transfer
   to DO if it seems like circumstances warrant
* Use Skylight for application metrics
  * Free at base level
* Use Google analytics for sales info
* Use Stripe dashboards for sales info
* Code Climate / Hound / GitHub for free as an open source project
* Mailgun for transactional email
  * Free at base level
* Sidekiq as a job runner (pretty much just using ActiveJob)
