//
//  api
//  WhereYouAt
//
//  Created by Christopher Wirz on 09/30/2015
//  Copyright (c) 2016. All Rights Reserved.
//  This file is designed to wrap the API server and works in Swift 2.0 Xcode 7.0.
//
//
// The following functions are available to the public
//
//	WhereYouAt.APIKey.all(options)
//	WhereYouAt.APIKey.create(options)				// api_key_parent_id, api_key_title, api_key_domain, api_key_string
//	WhereYouAt.APIKey.delete(options)				// api_key_string
//	WhereYouAt.APIKey.destroy(options)
//	WhereYouAt.APIKey.update(options)				// api_key_parent_id, api_key_title, api_key_domain, api_key_string
//	WhereYouAt.AuthToken.addAppleDeviceId(options)		// apple_device_id, auth_token_string
//	WhereYouAt.AuthToken.all(options)
//	WhereYouAt.AuthToken.delete(options)				// auth_token_string
//	WhereYouAt.AuthToken.deleteOrphans(options)
//	WhereYouAt.AuthToken.destroy(options)
//	WhereYouAt.AuthToken.get(options)				// auth_token_string
//	WhereYouAt.AuthToken.getByAppleDeviceId(options)		// apple_device_id
//	WhereYouAt.AuthToken.regenerate(options)			// auth_token_string
//	WhereYouAt.AuthToken.removeAppleDeviceId(options)		// apple_device_id, auth_token_string
//	WhereYouAt.AuthToken.renew(options)				// auth_token_string
//	WhereYouAt.BlockedContent.all(options)			// limit, offset
//	WhereYouAt.BlockedContent.create(options)			// blocked_content_parent_id
//	WhereYouAt.BlockedContent.delete(options)			// blocked_content_id, blocked_content_parent_id
//	WhereYouAt.CheckIn.all(options)				// limit, offset
//	WhereYouAt.CheckIn.allByParentId(options)			// check_in_parent_id, group_results, current_only, limit, offset
//	WhereYouAt.CheckIn.allForCurrentUser(options)		// check_in_parent_id, group_results, current_only, limit, offset
//	WhereYouAt.CheckIn.allNearby(options)			// check_in_latitude, check_in_longitude, radius, user_profile_gender, current_only, most_recent, after_date_time, target_return_size, limit, offset, venue_category
//	WhereYouAt.CheckIn.create(options)				// check_in_parent_id, check_in_title, check_in_description, check_in_main_image_url, check_in_cover_image_url, check_in_mood, check_in_lat, check_in_long, check_in_visibility
//	WhereYouAt.CheckIn.delete(options)				// check_in_id
//	WhereYouAt.CheckIn.ensureIndex(options)
//	WhereYouAt.CheckIn.get(options)				// check_in_id
//	WhereYouAt.CheckIn.mostRecent(options)			// user_id
//	WhereYouAt.CheckIn.recent(options)				// user_id, limit, offset
//	WhereYouAt.CheckIn.update(options)				// check_in_id, check_in_title, check_in_body, check_in_mood, check_in_visibility
//	WhereYouAt.Comment.all(options)				// limit, offset
//	WhereYouAt.Comment.create(options)				// comment_parent_id, comment_body, comment_mood
//	WhereYouAt.Comment.delete(options)				// comment_id
//	WhereYouAt.Comment.edit(options)				// comment_id, comment_body, comment_mood
//	WhereYouAt.Comment.get(options)				// comment_id
//	WhereYouAt.Comment.getRecursive(options)			// comment_id
//	WhereYouAt.Comment.getByParentIDRecursive(options)		// comment_parent_id
//	WhereYouAt.ContactsList.addUser(options)			// contacts_list_contact_ids
//	WhereYouAt.ContactsList.all(options)				// limit, offset
//	WhereYouAt.ContactsList.allNearby(options)			// latitude, longitude, radius, user_profile_lat, user_profile_long, limit, offset
//	WhereYouAt.ContactsList.create(options)			// contacts_list_contact_ids
//	WhereYouAt.ContactsList.decline(options)			// user_id, user_username
//	WhereYouAt.ContactsList.delete(options)			// contacts_list_id
//	WhereYouAt.ContactsList.get(options)				// contacts_list_id
//	WhereYouAt.ContactsList.getForCurrentUser(options)
//	WhereYouAt.ContactsList.getRequestsForCurrentUserWithDetails(options)
//	WhereYouAt.ContactsList.getRequestsWithDetailsForCurrentUser(options)
//	WhereYouAt.ContactsList.getForCurrentUserWithDetails(options)// current_user_is_contact_of_user
//	WhereYouAt.ContactsList.getWithDetailsForCurrentUser(options)// current_user_is_contact_of_user
//	WhereYouAt.ContactsList.removeUser(options)			// contacts_list_contact_ids
//	WhereYouAt.Favorite.add(options)				// object_id
//	WhereYouAt.Favorite.remove(options)				// object_id
//	WhereYouAt.Feed.all(options)					// limit, offset
//	WhereYouAt.Feed.allByParentID(options)			// feed_parent_id, show_elements, limit, offset
//	WhereYouAt.Feed.set(options)					// feed_parent_id, feed_subject, feed_caption, feed_main_image_url, feed_cover_image_url, feed_contribution, feed_visibility
//	WhereYouAt.Feed.delete(options)				// feed_id
//	WhereYouAt.Feed.get(options)					// feed_id
//	WhereYouAt.Feed.getWithDetails(options)			// feed_id, limit, offset
//	WhereYouAt.Feed.getHomeFeed(options)				// feed_element_is_most_recent, limit, offset
//	WhereYouAt.FeedElement.all(options)				// limit, offset
//	WhereYouAt.FeedElement.allByParentId(options)		// feed_element_parent_id, limit, offset
//	WhereYouAt.FeedElement.create(options)			// feed_element_feed_id, feed_element_title, feed_element_description, feed_element_main_image_url, feed_element_cover_image_url, feed_element_mood, feed_element_lat, feed_element_long, feed_element_appended_data_id, feed_element_attached_file_url, feed_element_post_to_public_feed, feed_element_post_anonymous, feed_element_visibility, feed_element_publication_date
//	WhereYouAt.FeedElement.delete(options)			// feed_element_id
//	WhereYouAt.FeedElement.get(options)				// feed_element_id
//	WhereYouAt.FeedElement.ensureIndex(options)
//	WhereYouAt.FeedElement.migrate(options)
//	WhereYouAt.FeedElement.update(options)			// feed_element_id, feed_element_title, feed_element_description, feed_element_main_image_url, feed_element_cover_image_url, feed_element_mood, feed_element_lat, feed_element_long, feed_element_appended_data_id, feed_element_attached_file_url, feed_element_post_anonymous, feed_element_visibility, feed_element_publication_date
//	WhereYouAt.FeedFollow.all(options)				// limit, offset
//	WhereYouAt.FeedFollow.create(options)			// feed_id
//	WhereYouAt.FeedFollow.delete(options)			// feed_follow_id
//	WhereYouAt.FeedFollow.followUser(options)			// user_id
//	WhereYouAt.FeedFollow.get(options)				// feed_follow_id
//	WhereYouAt.FeedFollow.unFollowUser(options)			// user_id
//	WhereYouAt.Feedback.all(options)				// limit, offset
//	WhereYouAt.Feedback.delete(options)				// feedback_id
//	WhereYouAt.Feedback.get(options)				// feedback_id
//	WhereYouAt.Feedback.getByParentID(options)			// feedback_parent_id
//	WhereYouAt.Feedback.set(options)				// feedback_id, feedback_parent_id, feedback_subject, feedback_body, feedback_visibility
//	WhereYouAt.File.all(options)
//	WhereYouAt.File.allByParentID(options)			// file_parent_id
//	WhereYouAt.File.allCurrentUser(options)
//	WhereYouAt.File.copyToParent(options)			// file_id, file_parent_id
//	WhereYouAt.File.delete(options)				// file_id
//	WhereYouAt.File.get(options)					// file_id, file_location, file_key, file_name
//	WhereYouAt.File.files(options)				// file_id
//	WhereYouAt.File.update(options)				// file_id, file_parent_id, file_title, file_description
//	WhereYouAt.File.upload(options)				// file_parent_id, file_title, file_description
//	WhereYouAt.Functions.allDataObjects(options)
//	WhereYouAt.Functions.allEnums(options)
//	WhereYouAt.Functions.bitbucketRepository(options)		// Authorization, cookie, account, repository
//	WhereYouAt.Functions.clearErrorLog(options)
//	WhereYouAt.Functions.compileSDKs(options)
//	WhereYouAt.Functions.emptyFiles(options)
//	WhereYouAt.Functions.endpointCount(options)
//	WhereYouAt.Functions.errorLog(options)
//	WhereYouAt.Functions.imagesFromURL(options)			// url, enforce_extension
//	WhereYouAt.Functions.lineCount(options)
//	WhereYouAt.Functions.migrate(options)
//	WhereYouAt.Functions.moveRandomUsers(options)
//	WhereYouAt.Functions.randomUser(options)
//	WhereYouAt.Functions.repopulateVenues(options)
//	WhereYouAt.Functions.uniqueCategories(options)
//	WhereYouAt.GeolocationBreadCrumb.all(options)		// limit, offset
//	WhereYouAt.GeolocationBreadCrumb.create(options)		// geolocation_breadcrumb_lat, geolocation_breadcrumb_long, geolocation_breadcrumb_visibility
//	WhereYouAt.GeolocationBreadCrumb.delete(options)		// id
//	WhereYouAt.GeolocationBreadCrumb.ensureIndex(options)
//	WhereYouAt.GeolocationBreadCrumb.get(options)		// id
//	WhereYouAt.GeolocationBreadCrumb.update(options)		// geolocation_breadcrumb_id, geolocation_breadcrumb_visibility
//	WhereYouAt.Group.addAdmin(options)				// group_id, group_handle, user_id, user_username
//	WhereYouAt.Group.addMember(options)				// group_id, group_handle, user_id, user_username
//	WhereYouAt.Group.addRequest(options)				// group_id, group_handle, user_id, user_username
//	WhereYouAt.Group.all(options)				// limit, offset
//	WhereYouAt.Group.allWithDetails(options)			// limit, offset
//	WhereYouAt.Group.create(options)				// group_handle, group_name
//	WhereYouAt.Group.delete(options)				// group_id, group_handle
//	WhereYouAt.Group.get(options)				// group_id, group_handle
//	WhereYouAt.Group.getWithDetails(options)			// group_id, group_handle
//	WhereYouAt.Group.removeAdmin(options)			// group_id, group_handle, user_id, user_username
//	WhereYouAt.Group.removeMember(options)			// group_id, group_handle, user_id, user_username
//	WhereYouAt.Group.removeRequest(options)			// group_id, group_handle, user_id, user_username
//	WhereYouAt.Group.update(options)				// group_id, group_handle, group_name, group_description, group_main_image_url, group_cover_image_url, group_visibility
//	WhereYouAt.Image.all(options)
//	WhereYouAt.Image.allByParentID(options)			// image_parent_id
//	WhereYouAt.Image.allCurrentUser(options)
//	WhereYouAt.Image.copyToParent(options)			// image_id, image_parent_id
//	WhereYouAt.Image.delete(options)				// image_id
//	WhereYouAt.Image.get(options)				// image_id, image_location, image_key, image_file_name
//	WhereYouAt.Image.images(options)				// image_id
//	WhereYouAt.Image.rotate(options)				// image_id, image_location, image_file_name, image_rotation, image_parent_id
//	WhereYouAt.Image.update(options)				// image_id, image_parent_id, image_title, image_description, image_alt_text
//	WhereYouAt.Image.upload(options)				// image_parent_id, image_title, image_description, image_alt_text
//	WhereYouAt.ImageAlbum.addAuthor(options)			// image_album_id, user_id, user_username, team_id, team_handle
//	WhereYouAt.ImageAlbum.addImage(options)			// image_album_id, image_id, image_location
//	WhereYouAt.ImageAlbum.all(options)				// limit, offset
//	WhereYouAt.ImageAlbum.allByParentId(options)			// image_album_parent_id, limit, offset
//	WhereYouAt.ImageAlbum.allByParentIdWithDetails(options)	// image_album_parent_id, limit, offset
//	WhereYouAt.ImageAlbum.allEditable(options)			// limit, offset
//	WhereYouAt.ImageAlbum.create(options)			// image_album_parent_id, image_album_title, image_album_handle, image_album_caption, image_album_description, image_album_contribution_open_to, image_album_main_image_url, image_album_cover_image_url, latitude, longitude, visibility
//	WhereYouAt.ImageAlbum.delete(options)			// image_album_id, image_album_handle
//	WhereYouAt.ImageAlbum.ensureIndex(options)
//	WhereYouAt.ImageAlbum.get(options)				// image_album_id, image_album_handle
//	WhereYouAt.ImageAlbum.getWithDetails(options)		// image_album_id, image_album_handle
//	WhereYouAt.ImageAlbum.removeAuthor(options)			// image_album_id, image_album_parent_id, user_id, user_username, team_id, team_handle
//	WhereYouAt.ImageAlbum.removeImage(options)			// image_album_id, image_id, image_location
//	WhereYouAt.ImageAlbum.update(options)			// image_album_id, image_album_parent_id, image_album_title, image_album_handle, image_album_syndication, image_album_caption, image_album_description, image_album_contribution_open_to, image_album_main_image_url, image_album_cover_image_url, latitude, longitude, visibility
//	WhereYouAt.Like.all(options)					// limit, offset
//	WhereYouAt.Like.create(options)				// like_parent_id, like_type
//	WhereYouAt.Like.delete(options)				// like_id
//	WhereYouAt.Like.get(options)					// like_id
//	WhereYouAt.Message.all(options)				// limit, offset
//	WhereYouAt.Message.allFromIDToCurrentUser(options)		// message_author_id, limit, offset
//	WhereYouAt.Message.allMessageThreads(options)		// limit, offset
//	WhereYouAt.Message.allSeen(options)				// limit, offset
//	WhereYouAt.Message.allThreads(options)			// limit, offset
//	WhereYouAt.Message.allUnseen(options)			// limit, offset
//	WhereYouAt.Message.create(options)				// message_thread_string, message_recipient_ids, message_subject, message_body, message_attachment_url, message_mood, message_lat, message_long, message_parent_id
//	WhereYouAt.Message.delete(options)				// message_id
//	WhereYouAt.Message.deleteRecursive(options)			// message_id
//	WhereYouAt.Message.edit(options)				// message_id, message_subject, message_body, message_attachment_url, message_mood
//	WhereYouAt.Message.ensureIndex(options)
//	WhereYouAt.Message.get(options)				// message_id
//	WhereYouAt.Message.getThread(options)			// message_thread_string
//	WhereYouAt.Message.leave(options)				// message_id, message_thread_string
//	WhereYouAt.Message.markSeen(options)				// message_id, message_thread_string
//	WhereYouAt.Message.markUnseen(options)			// message_id
//	WhereYouAt.Message.reply(options)				// message_id, message_subject, message_body, message_attachment_url, message_mood
//	WhereYouAt.Message.replyAll(options)				// message_id, message_subject, message_body, message_attachment_url, message_mood
//	WhereYouAt.Message.replyThread(options)			// message_thread_string, message_subject, message_body, message_attachment_url, message_mood
//	WhereYouAt.MessageThread.all(options)			// limit, offset
//	WhereYouAt.MessageThread.allUnseen(options)			// limit, offset
//	WhereYouAt.MessageThread.create(options)			// message_thread_thread_string, message_thread_recipient_ids, message_thread_subject, message_thread_body, message_thread_lat, message_thread_long, message_thread_parent_id
//	WhereYouAt.MessageThread.delete(options)			// message_thread_id
//	WhereYouAt.MessageThread.get(options)			// message_thread_id
//	WhereYouAt.MessageThread.getWithDetails(options)		// message_thread_id, limit, offset
//	WhereYouAt.MessageThread.join(options)			// message_thread_id, message_thread_string
//	WhereYouAt.MessageThread.leave(options)			// message_thread_id, message_thread_string
//	WhereYouAt.ReportedContent.all(options)			// limit, offset
//	WhereYouAt.ReportedContent.create(options)			// report_content_parent_id
//	WhereYouAt.ReportedContent.delete(options)			// report_content_id, report_content_parent_id
//	WhereYouAt.Search.all(options)				// terms
//	WhereYouAt.Search.apiDocumentation(options)			// terms
//	WhereYouAt.Search.contacts(options)				// terms
//	WhereYouAt.Search.user(options)				// terms, user_profile_age, user_profile_min_age, user_profile_max_age, user_profile_gender
//	WhereYouAt.Search.venue(options)				// latitude, longitude, location, terms, category, radius, venue_verified
//	WhereYouAt.SeenContent.all(options)				// limit, offset
//	WhereYouAt.SeenContent.create(options)			// seen_content_parent_id
//	WhereYouAt.SeenContent.delete(options)			// seen_content_id, seen_content_parent_id
//	WhereYouAt.Swipe.all(options)				// limit, offset
//	WhereYouAt.Swipe.create(options)				// swipe_parent_id, swipe_type
//	WhereYouAt.Swipe.delete(options)				// swipe_id
//	WhereYouAt.Swipe.get(options)				// swipe_id
//	WhereYouAt.User.addEmail(options)				// user_id, user_email_address
//	WhereYouAt.User.all(options)					// show_random, limit, offset
//	WhereYouAt.User.allNearby(options)				// latitude, longitude, radius, user_profile_lat, user_profile_long, limit, offset
//	WhereYouAt.User.allRandom(options)				// reset_password, limit, offset
//	WhereYouAt.User.changePassword(options)			// user_username, user_password, user_password_new, user_password_new_2
//	WhereYouAt.User.create(options)				// user_username, user_password, user_email_address, user_first_name, user_last_name, user_display_name, user_verified_by_admin, user_visibility
//	WhereYouAt.User.createByAuth(options)			// user_visibility
//	WhereYouAt.User.current(options)
//	WhereYouAt.User.delete(options)				// user_id, user_username, user_email_address
//	WhereYouAt.User.deleteRandom(options)
//	WhereYouAt.User.destroy(options)
//	WhereYouAt.User.forgotPassword(options)			// user_username
//	WhereYouAt.User.get(options)					// user_username, user_email_address, user_id
//	WhereYouAt.User.login(options)				// user_username, user_password
//	WhereYouAt.User.logout(options)
//	WhereYouAt.User.logoutAll(options)
//	WhereYouAt.User.removeEmail(options)				// user_id, user_email_address
//	WhereYouAt.User.update(options)				// user_id, user_username, user_main_image_url, user_cover_image_url, user_description, user_first_name, user_last_name, user_email_address, user_verified_by_admin, user_visibility
//	WhereYouAt.UserFilters.all(options)				// limit, offset
//	WhereYouAt.UserFilters.current(options)
//	WhereYouAt.UserFilters.delete(options)
//	WhereYouAt.UserFilters.get(options)				// user_filter_id
//	WhereYouAt.UserFilters.set(options)				// user_filter_radius, user_filter_user_profile_distance, user_filter_user_profile_distance_sort, user_filter_user_profile_max_age, user_filter_user_profile_min_age, user_filter_user_profile_age_sort, user_filter_user_profile_gender
//	WhereYouAt.UserProfile.all(options)				// limit, offset
//	WhereYouAt.UserProfile.delete(options)
//	WhereYouAt.UserProfile.ensureIndex(options)
//	WhereYouAt.UserProfile.get(options)				// user_profile_id, user_id, user_username
//	WhereYouAt.UserProfile.set(options)				// user_profile_activity_status, user_profile_activity_status_visibility, user_profile_gender, user_profile_phone_number, user_profile_phone_number_visibility, user_profile_title, user_profile_title_visibility, user_profile_interests, user_profile_interests_visibility, user_profile_employer, user_profile_employer_visibility, user_profile_employer_address, user_profile_employer_address_visibility, user_profile_birthday, user_profile_birthday_visibility, user_profile_current_location_string, user_profile_current_location_string_visibility, user_profile_mood, user_profile_mood_visibility, user_profile_lat, user_profile_long, user_profile_long_lat_visibility, user_profile_relationship_status, user_profile_relationship_status_visibility, user_profile_relationship_interest, user_profile_relationship_interest_visibility, user_profile_visibility
//	WhereYouAt.UserSettings.all(options)				// limit, offset
//	WhereYouAt.UserSettings.delete(options)
//	WhereYouAt.UserSettings.get(options)				// user_setting_id
//	WhereYouAt.UserSettings.set(options)				// user_setting_visibility
//	WhereYouAt.Venue.all(options)				// limit, offset
//	WhereYouAt.Venue.allNearby(options)				// latitude, longitude, radius, venue_category, venue_lat, venue_long, after_date_time, limit, offset, venue_verified, most_popular, checked_in_contacts, specials
//	WhereYouAt.Venue.create(options)				// venue_parent_id, venue_title, venue_handle, venue_syndication, venue_caption, venue_description, venue_address_first_line, venue_address_second_line, venue_address_city, venue_address_state, venue_address_zip, venue_phone_number, venue_url, venue_category, venue_price, venue_parking, venue_main_image_url, venue_cover_image_url, latitude, longitude, venue_verified, visibility
//	WhereYouAt.Venue.delete(options)				// venue_id, venue_handle
//	WhereYouAt.Venue.ensureIndex(options)
//	WhereYouAt.Venue.get(options)				// venue_id, venue_handle
//	WhereYouAt.Venue.update(options)				// venue_id, venue_parent_id, venue_title, venue_handle, venue_syndication, venue_caption, venue_description, venue_address_first_line, venue_address_second_line, venue_address_city, venue_address_state, venue_address_zip, venue_phone_number, venue_url, venue_category, venue_price, venue_parking, venue_main_image_url, venue_cover_image_url, latitude, longitude, venue_verified, visibility
//	WhereYouAt.Venue.checkInAndJoin(options)			// venue_id, venue_handle, check_in_visibility
//	WhereYouAt.VenueSpecial.all(options)				// limit, offset
//	WhereYouAt.VenueSpecial.allNearby(options)			// latitude, longitude, radius, venue_special_lat, venue_special_long, limit, offset, venue_special_verified, most_popular, checked_in_contacts
//	WhereYouAt.VenueSpecial.create(options)			// venue_special_parent_id, venue_special_title, venue_special_expiration_date, venue_special_syndication, venue_special_caption, venue_special_description, venue_special_price, venue_special_main_image_url, venue_special_cover_image_url, venue_special_verified, visibility
//	WhereYouAt.VenueSpecial.delete(options)			// venue_special_id
//	WhereYouAt.VenueSpecial.deleteExpired(options)
//	WhereYouAt.VenueSpecial.get(options)				// venue_special_id
//	WhereYouAt.VenueSpecial.update(options)			// venue_special_id, venue_special_expiration_date, venue_special_title, venue_special_syndication, venue_special_caption, venue_special_description, venue_special_url, venue_special_price, venue_special_main_image_url, venue_special_cover_image_url, venue_special_verified, visibility
//	WhereYouAt.Verification.all(options)
//	WhereYouAt.Verification.createUserEmailValidation(options)	// parent_id, verification_value
//	WhereYouAt.Verification.verifyUserEmailAddress(options)	// verification_string, user_email_address
//	WhereYouAt.Verification.delete(options)			// verification_string
//	WhereYouAt.Verification.passwordReset(options)		// verification_string, user_username, user_password
//
// Now calling the API...
//


import Foundation
import MobileCoreServices
import UIKit

//
// An API Object
//
public class WhereYouAtAPIObject {
    //  Third party developers should use their own API key
    public var WhereYouAtXAPIKey: String = "where-you-at-test";

    //  This is the API server / base url
    public var WhereYouAtAPIServer: String = "https://api-wya.rhcloud.com/api/";

    //  This is the specific rout to the api
    public var WhereYouAtAPIPath: String = "";

    //  These are the parameters that may be set during operation
    public var Result: NSDictionary = ["success": false]
    public var Error: String = "";

    // Generate a boundary string for file types
    public func generateBoundaryString() -> String {
        return "Boundary-\(NSUUID().UUIDString)";
    }

    /// Determine mime type on the basis of extension of a file.
    ///
    /// This requires MobileCoreServices framework.
    ///
    /// :param: path         The path of the file for which we are going to determine the mime type.
    ///
    /// :returns:            Returns the mime type if successful. Returns application/octet-stream if unable to determine mime type.
    func mimeTypeForPath(path: String) -> String {
        if let pathExtension = path.componentsSeparatedByString(".").last {
            if let uti = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension as NSString, nil)?.takeRetainedValue() {
                if let mimetype = UTTypeCopyPreferredTagWithClass(uti, kUTTagClassMIMEType)?.takeRetainedValue() {
                    return mimetype as String
                }
            }
            let unmanagedFileUTI = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, (pathExtension as NSString), nil)

            if let uti = unmanagedFileUTI?.takeRetainedValue() {
                if let mimetype = UTTypeCopyPreferredTagWithClass(uti, kUTTagClassMIMEType)?.takeRetainedValue() {
                    return mimetype as String
                }
            }
        }
        return "application/octet-stream";
    }

    //  This is the public function that makes a data request and returns the dispatch
    public func callAPI(params: Dictionary<String, String>) -> dispatch_semaphore_t {
        let headers: Dictionary<String, String> = ["X-Apple-Device-Id": UIDevice.currentDevice().identifierForVendor!.UUIDString]
        return self.callAPI(params, headers: headers)
    }
    public func callAPI(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
        let urlPath = self.WhereYouAtAPIServer + self.WhereYouAtAPIPath;
        let url = NSURL(string: urlPath)
        let request = NSMutableURLRequest(URL: url!)

        let session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
        request.HTTPBody = try! NSJSONSerialization.dataWithJSONObject(params, options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        if (headers["X-Apple-Device-Id"] == nil) {
            request.addValue(UIDevice.currentDevice().identifierForVendor!.UUIDString, forHTTPHeaderField: "X-Apple-Device-Id")
        }
        if (headers["X-Local-Time"] == nil) {
            request.addValue(String(NSDate()), forHTTPHeaderField: "X-Local-Time")
        }
        request.addValue(self.WhereYouAtXAPIKey, forHTTPHeaderField: "X-API-Key")

        for (key, value) in headers {
            request.addValue(value, forHTTPHeaderField: key)
        }

        let semaphore = dispatch_semaphore_create(0);

        let task = session.dataTaskWithRequest(request){data, response, error in
            if(error != nil) {
                self.Error = error!.localizedDescription
                dispatch_semaphore_signal(semaphore);
            } else {
                do {
	            let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                    self.Result = jsonResult
                    dispatch_semaphore_signal(semaphore);
                } catch {
                    self.Error = "Could not parse JSON"
                    self.Result = ["success": false, "message": self.Error]
                    dispatch_semaphore_signal(semaphore);
                }
            }
        }
        task.resume()

        // Wait for the dispatch to complete
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);

        // Passing the dispatch will ensure the calling method does not continue until JSON data arrives
        return semaphore
    }

    //  This is the public function that makes a data request and allows for callback of the NSDicationary results
    public func callAPI(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
        let headers: Dictionary<String, String> = ["X-Apple-Device-Id": UIDevice.currentDevice().identifierForVendor!.UUIDString]
        self.callAPI(params, headers: headers, callback: callback)
    }
    public func callAPI(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
        let urlPath = self.WhereYouAtAPIServer + self.WhereYouAtAPIPath;
        let url = NSURL(string: urlPath)
        let session = NSURLSession.sharedSession()
        var jsonResult: AnyObject! = ["success": false]

        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "POST"
        request.HTTPBody = try! NSJSONSerialization.dataWithJSONObject(params, options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")

        if (headers["X-Apple-Device-Id"] == nil) {
            request.addValue(UIDevice.currentDevice().identifierForVendor!.UUIDString, forHTTPHeaderField: "X-Apple-Device-Id")
        }
        if (headers["X-Local-Time"] == nil) {
            request.addValue(String(NSDate()), forHTTPHeaderField: "X-Local-Time")
        }
        request.addValue(self.WhereYouAtXAPIKey, forHTTPHeaderField: "X-API-Key")

        for (key, value) in headers {
            request.addValue(value, forHTTPHeaderField: key)
        }

        let task = session.dataTaskWithRequest(request) {data, response, error in
            if(error != nil) {
                self.Error = error!.localizedDescription
                jsonResult = ["success": false, "message": error!.localizedDescription]
            } else {
                do {
                    let testJsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                    self.Result = testJsonResult
                    jsonResult = testJsonResult
                } catch {
                    self.Error = "Could not parse JSON"
                    jsonResult = ["success": false, "message": self.Error]
                }
            }
            callback(jsonResult as! NSDictionary)
        }
        task.resume()
    }

    //  This is the public function that makes a data request and returns the dispatch
    //  Currently, this method uses example files, and not production data
    //  let paths = [NSBundle.mainBundle().pathForResource("image1", ofType: "png") as String!]
    public func callFileAPI(params: Dictionary<String, String>, paths: [String]) -> dispatch_semaphore_t {
        let headers: Dictionary<String, String> = ["X-Apple-Device-Id": UIDevice.currentDevice().identifierForVendor!.UUIDString]
        return self.callFileAPI(params, headers: headers, paths: paths)
    }
    public func callFileAPI(params: Dictionary<String, String>, headers: Dictionary<String, String>, paths: [String]) -> dispatch_semaphore_t {
        let urlPath = self.WhereYouAtAPIServer + self.WhereYouAtAPIPath;
        let url = NSURL(string: urlPath)
        let session = NSURLSession.sharedSession()
        let boundary = generateBoundaryString()

        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "POST"

        let body = createBodyWithParameters(params, filePathKey: "file", paths: paths, boundary: boundary)
        request.HTTPBody = body

        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue(self.WhereYouAtXAPIKey, forHTTPHeaderField: "X-API-Key")

        if (headers["X-Apple-Device-Id"] == nil) {
            request.addValue(UIDevice.currentDevice().identifierForVendor!.UUIDString, forHTTPHeaderField: "X-Apple-Device-Id")
        }
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")

        for (key, value) in headers {
            request.addValue(value, forHTTPHeaderField: key)
        }

        let semaphore = dispatch_semaphore_create(0);

        session.dataTaskWithRequest(request, completionHandler: {data, response, error in
            if(error != nil) {
                self.Error = error!.localizedDescription
                self.Result = ["success": false, "message": error!.localizedDescription]
            } else {
                do {
                    let testJsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                    self.Result = testJsonResult
                } catch {
                    self.Error = "Could not parse JSON"
                    self.Result = ["success": false, "message": self.Error]
                }
            }
        }).resume()

        // Wait for the dispatch to complete
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);

        // Passing the dispatch will ensure the calling method does not continue until JSON data arrives
        return semaphore
    }
    public func callFileAPI(params: Dictionary<String, String>, paths: [String], callback:(NSDictionary) -> Void) -> Void {
        let headers: Dictionary<String, String> = ["X-Apple-Device-Id": UIDevice.currentDevice().identifierForVendor!.UUIDString]
        self.callFileAPI(params, headers: headers, paths: paths, callback: callback)
    }
    public func callFileAPI(params: Dictionary<String, String>, headers: Dictionary<String, String>, paths: [String], callback:(NSDictionary) -> Void) -> Void {
        let urlPath = self.WhereYouAtAPIServer + self.WhereYouAtAPIPath;
        let url = NSURL(string: urlPath)
        let session = NSURLSession.sharedSession()
        var jsonResult: AnyObject! = ["success": false]

        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "POST"

        let boundary = generateBoundaryString()

        let body = createBodyWithParameters(params, filePathKey: "file", paths: paths, boundary: boundary)
        request.HTTPBody = body

        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue(self.WhereYouAtXAPIKey, forHTTPHeaderField: "X-API-Key")
        if (headers["X-Apple-Device-Id"] == nil) {
            request.addValue(UIDevice.currentDevice().identifierForVendor!.UUIDString, forHTTPHeaderField: "X-Apple-Device-Id")
        }
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        request.setValue("\(body.length)", forHTTPHeaderField: "Content-Length")

        for (key, value) in headers {
            request.addValue(value, forHTTPHeaderField: key)
        }

        let task = session.dataTaskWithRequest(request) {data, response, error in
            if(error != nil) {
                self.Error = error!.localizedDescription
                jsonResult = ["success": false, "message": error!.localizedDescription]
            } else {
                do {
                    let testJsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                    self.Result = testJsonResult
                    jsonResult = testJsonResult
                } catch {
                    self.Error = "Could not parse JSON"
                    jsonResult = ["success": false, "message": self.Error]
                }

            }
            callback(jsonResult as! NSDictionary)
        }
        task.resume()
    }
    public func callFileAPI(params: Dictionary<String, String>, headers: Dictionary<String, String>, images: [UIImage], callback:(NSDictionary) -> Void) -> Void {
        let urlPath = self.WhereYouAtAPIServer + self.WhereYouAtAPIPath;
        let url = NSURL(string: urlPath)
        let session = NSURLSession(configuration: NSURLSessionConfiguration.ephemeralSessionConfiguration())
        var jsonResult: AnyObject! = ["success": false]

        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "POST"

        let boundary = generateBoundaryString()

        let body = createBodyWithParameters(params, filePathKey: "image_file", images: images, boundary: boundary)
        request.HTTPBody = body

        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue(self.WhereYouAtXAPIKey, forHTTPHeaderField: "X-API-Key")
        if (headers["X-Apple-Device-Id"] == nil) {
            request.addValue(UIDevice.currentDevice().identifierForVendor!.UUIDString, forHTTPHeaderField: "X-Apple-Device-Id")
        }
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        request.setValue("\(body.length)", forHTTPHeaderField: "Content-Length")

        for (key, value) in headers {
            request.addValue(value, forHTTPHeaderField: key)
        }

        let task = session.dataTaskWithRequest(request) {data, response, error in
            if(error != nil) {
                self.Error = error!.localizedDescription
                jsonResult = ["success": false, "message": error!.localizedDescription]
            } else {
                do {
                    let testJsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                    self.Result = testJsonResult
                    jsonResult = testJsonResult
                } catch {
                    self.Error = "Could not parse JSON"
                    jsonResult = ["success": false, "message": self.Error]
                }
            }
            callback(jsonResult as! NSDictionary)
        }
        task.resume()
    }

    /**
        Create body of the multipart/form-data request

        :param: parameters   The optional dictionary containing keys and values to be passed to web service
        :param: filePathKey  The optional field name to be used when uploading files. If you supply paths, you must supply filePathKey, too.
        :param: paths        The optional array of file paths of the files to be uploaded
        :param: boundary     The multipart/form-data boundary

        :returns:            The NSData of the body of the request
    */
    public func createBodyWithParameters(parameters: [String: String]?, filePathKey: String?, paths: [String]?, boundary: String) -> NSData {
        let body = NSMutableData()

        if parameters != nil {
            for (key, value) in parameters! {
                body.appendString("--\(boundary)\r\n")
                body.appendString("Content-Disposition: form-data; name=\"\(key)\"\r\n\r\n")
                body.appendString("\(value)\r\n")
            }
        }

        if paths != nil {
            for path in paths! {
                let filename = NSURL(fileURLWithPath: path).lastPathComponent
                let data = NSData(contentsOfFile: path)
                let mimetype = mimeTypeForPath(path)

                body.appendString("--\(boundary)\r\n")
                body.appendString("Content-Disposition: form-data; name=\"\(filePathKey!)\"; filename=\"\(filename)\"\r\n")
                body.appendString("Content-Type: \(mimetype)\r\n\r\n")
                body.appendData(data!)
                body.appendString("\r\n")
                body.appendString("--\(boundary)--\r\n")
            }
        }

        return body
    }
    public func createBodyWithParameters(parameters: [String: String]?, filePathKey: String?, images: [UIImage]?, boundary: String) -> NSData {
        let body = NSMutableData()

        if parameters != nil {
            for (key, value) in parameters! {
                body.appendString("--\(boundary)\r\n")
                body.appendString("Content-Disposition: form-data; name=\"\(key)\"\r\n\r\n")
                body.appendString("\(value)\r\n")
            }
        }

        var counter: Int = 1

        if images != nil {
            for image in images! {
                counter = counter + 1
                let filename = "file_\(counter.description).png"
                let data = UIImagePNGRepresentation(image)

                body.appendString("--\(boundary)\r\n")
                body.appendString("Content-Disposition: form-data; name=\"\(filePathKey!)\"; filename=\"\(filename)\"\r\n")
                body.appendString("Content-Type: image/png\r\n\r\n")
                body.appendData(data!)
                body.appendString("\r\n")
                body.appendString("--\(boundary)--\r\n")
            }
        }

        return body
    }
}

extension NSMutableData {

    /// Append string to NSMutableData
    ///
    /// Rather than littering my code with calls to `dataUsingEncoding` to convert strings to NSData, and then add that data to the NSMutableData, this wraps it in a nice convenient little extension to NSMutableData. This converts using UTF-8.
    ///
    /// :param: string       The string to be added to the `NSMutableData`.

    func appendString(string: String) {
        let data = string.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
        appendData(data!)
    }
}

//
// aPIKey API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtAPIKeyAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the API keys returning a dispatch thread

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the API keys and uses a callback function

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		If a parent_id is not passed, the parent_id will be that of the logged in user.  If api_key_string is not passed, a UUID-style api key will be generated. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys api_key_parent_id, api_key_title, api_key_domain, api_key_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/create.json"
		return self.callAPI(params)
	}
	/**
		If a parent_id is not passed, the parent_id will be that of the logged in user.  If api_key_string is not passed, a UUID-style api key will be generated. and uses a callback function

		:params: a NSDictionary<String,String> using the keys api_key_parent_id, api_key_title, api_key_domain, api_key_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method is similar to logging out another user.  An admin must be logged in. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys api_key_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		This method is similar to logging out another user.  An admin must be logged in. and uses a callback function

		:params: a NSDictionary<String,String> using the keys api_key_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method is similar to logging out a user returning a dispatch thread

	*/
	public func destroy(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/destroy.json"
		return self.callAPI(params, headers: headers)
	}
	public func destroy(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/destroy.json"
		return self.callAPI(params)
	}
	/**
		This method is similar to logging out a user and uses a callback function

	*/
	public func destroy(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/destroy.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func destroy(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/destroy.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only parameters that are passed will update the api key returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys api_key_parent_id, api_key_title, api_key_domain, api_key_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "apikey/v1/update.json"
		return self.callAPI(params)
	}
	/**
		Only parameters that are passed will update the api key and uses a callback function

		:params: a NSDictionary<String,String> using the keys api_key_parent_id, api_key_title, api_key_domain, api_key_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "apikey/v1/update.json"
		self.callAPI(params, callback: callback)
	}
}

//
// authToken API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtAuthTokenAPIObject: WhereYouAtAPIObject {
	/**
		Given a token string, and Apple Device Id can be added returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys apple_device_id, auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addAppleDeviceId(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/addappledeviceid.json"
		return self.callAPI(params, headers: headers)
	}
	public func addAppleDeviceId(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/addappledeviceid.json"
		return self.callAPI(params)
	}
	/**
		Given a token string, and Apple Device Id can be added and uses a callback function

		:params: a NSDictionary<String,String> using the keys apple_device_id, auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addAppleDeviceId(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/addappledeviceid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func addAppleDeviceId(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/addappledeviceid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		If the user is an admin of rhcloud.com, all auth tokens will be returned returning a dispatch thread

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/all.json"
		return self.callAPI(params)
	}
	/**
		If the user is an admin of rhcloud.com, all auth tokens will be returned and uses a callback function

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method is similar to logging out another user.  An admin must be logged in. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		This method is similar to logging out another user.  An admin must be logged in. and uses a callback function

		:params: a NSDictionary<String,String> using the keys auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to delete orphans. returning a dispatch thread

	*/
	public func deleteOrphans(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/deleteorphans.json"
		return self.callAPI(params, headers: headers)
	}
	public func deleteOrphans(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/deleteorphans.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to delete orphans. and uses a callback function

	*/
	public func deleteOrphans(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/deleteorphans.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func deleteOrphans(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/deleteorphans.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method is similar to logging out a user returning a dispatch thread

	*/
	public func destroy(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/destroy.json"
		return self.callAPI(params, headers: headers)
	}
	public func destroy(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/destroy.json"
		return self.callAPI(params)
	}
	/**
		This method is similar to logging out a user and uses a callback function

	*/
	public func destroy(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/destroy.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func destroy(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/destroy.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method is similar to logging out a user returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/get.json"
		return self.callAPI(params)
	}
	/**
		This method is similar to logging out a user and uses a callback function

		:params: a NSDictionary<String,String> using the keys auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method is similar to logging out a user returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys apple_device_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getByAppleDeviceId(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/getbyappledeviceid.json"
		return self.callAPI(params, headers: headers)
	}
	public func getByAppleDeviceId(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/getbyappledeviceid.json"
		return self.callAPI(params)
	}
	/**
		This method is similar to logging out a user and uses a callback function

		:params: a NSDictionary<String,String> using the keys apple_device_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getByAppleDeviceId(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/getbyappledeviceid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getByAppleDeviceId(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/getbyappledeviceid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The token string will regenerate, keeping any device ids and parent ids. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func regenerate(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/regenerate.json"
		return self.callAPI(params, headers: headers)
	}
	public func regenerate(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/regenerate.json"
		return self.callAPI(params)
	}
	/**
		The token string will regenerate, keeping any device ids and parent ids. and uses a callback function

		:params: a NSDictionary<String,String> using the keys auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func regenerate(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/regenerate.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func regenerate(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/regenerate.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Given a token string, and Apple Device Id can be removed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys apple_device_id, auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeAppleDeviceId(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/removeappledeviceid.json"
		return self.callAPI(params, headers: headers)
	}
	public func removeAppleDeviceId(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/removeappledeviceid.json"
		return self.callAPI(params)
	}
	/**
		Given a token string, and Apple Device Id can be removed and uses a callback function

		:params: a NSDictionary<String,String> using the keys apple_device_id, auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeAppleDeviceId(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/removeappledeviceid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func removeAppleDeviceId(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/removeappledeviceid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		If no auth_token_string is passed, the method will simply renew the current session returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func renew(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/renew.json"
		return self.callAPI(params, headers: headers)
	}
	public func renew(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "authtoken/v1/renew.json"
		return self.callAPI(params)
	}
	/**
		If no auth_token_string is passed, the method will simply renew the current session and uses a callback function

		:params: a NSDictionary<String,String> using the keys auth_token_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func renew(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/renew.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func renew(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "authtoken/v1/renew.json"
		self.callAPI(params, callback: callback)
	}
}

//
// blockedContent API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtBlockedContentAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the blocked contents returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "blockedcontent/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "blockedcontent/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the blocked contents and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "blockedcontent/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "blockedcontent/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged block content returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys blocked_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "blockedContent/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "blockedContent/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged block content and uses a callback function

		:params: a NSDictionary<String,String> using the keys blocked_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "blockedContent/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "blockedContent/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a blocked on content returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys blocked_content_id, blocked_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "blockedcontent/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "blockedcontent/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a blocked on content and uses a callback function

		:params: a NSDictionary<String,String> using the keys blocked_content_id, blocked_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "blockedcontent/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "blockedcontent/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
}

//
// checkIn API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtCheckInAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the CheckIns returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the CheckIns and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The most recent CheckIns are displayed first returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys check_in_parent_id, group_results, current_only, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentId(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/allbyparentid.json"
		return self.callAPI(params, headers: headers)
	}
	public func allByParentId(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/allbyparentid.json"
		return self.callAPI(params)
	}
	/**
		The most recent CheckIns are displayed first and uses a callback function

		:params: a NSDictionary<String,String> using the keys check_in_parent_id, group_results, current_only, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentId(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/allbyparentid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allByParentId(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/allbyparentid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The most recent CheckIns are displayed first returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys check_in_parent_id, group_results, current_only, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allForCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/allforcurrentuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func allForCurrentUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/allforcurrentuser.json"
		return self.callAPI(params)
	}
	/**
		The most recent CheckIns are displayed first and uses a callback function

		:params: a NSDictionary<String,String> using the keys check_in_parent_id, group_results, current_only, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allForCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/allforcurrentuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allForCurrentUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/allforcurrentuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The most recent CheckIns are displayed first returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys check_in_latitude, check_in_longitude, radius, user_profile_gender, current_only, most_recent, after_date_time, target_return_size, limit, offset, venue_category
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/allnearby.json"
		return self.callAPI(params, headers: headers)
	}
	public func allNearby(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/allnearby.json"
		return self.callAPI(params)
	}
	/**
		The most recent CheckIns are displayed first and uses a callback function

		:params: a NSDictionary<String,String> using the keys check_in_latitude, check_in_longitude, radius, user_profile_gender, current_only, most_recent, after_date_time, target_return_size, limit, offset, venue_category
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/allnearby.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allNearby(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/allnearby.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to createa CheckIn returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys check_in_parent_id, check_in_title, check_in_description, check_in_main_image_url, check_in_cover_image_url, check_in_mood, check_in_lat, check_in_long, check_in_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to createa CheckIn and uses a callback function

		:params: a NSDictionary<String,String> using the keys check_in_parent_id, check_in_title, check_in_description, check_in_main_image_url, check_in_cover_image_url, check_in_mood, check_in_lat, check_in_long, check_in_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to deletea CheckIn returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys check_in_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to deletea CheckIn and uses a callback function

		:params: a NSDictionary<String,String> using the keys check_in_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to index 2d data returning a dispatch thread

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/ensureindex.json"
		return self.callAPI(params, headers: headers)
	}
	public func ensureIndex(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/ensureindex.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to index 2d data and uses a callback function

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/ensureindex.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func ensureIndex(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/ensureindex.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a CheckIn returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys check_in_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a CheckIn and uses a callback function

		:params: a NSDictionary<String,String> using the keys check_in_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a CheckIn returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func mostRecent(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/mostrecent.json"
		return self.callAPI(params, headers: headers)
	}
	public func mostRecent(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/mostrecent.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a CheckIn and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func mostRecent(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/mostrecent.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func mostRecent(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/mostrecent.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a CheckIn returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func recent(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/recent.json"
		return self.callAPI(params, headers: headers)
	}
	public func recent(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/recent.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a CheckIn and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func recent(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/recent.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func recent(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/recent.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A post must be edited by an author of the post returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys check_in_id, check_in_title, check_in_body, check_in_mood, check_in_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "checkin/v1/update.json"
		return self.callAPI(params)
	}
	/**
		A post must be edited by an author of the post and uses a callback function

		:params: a NSDictionary<String,String> using the keys check_in_id, check_in_title, check_in_body, check_in_mood, check_in_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "checkin/v1/update.json"
		self.callAPI(params, callback: callback)
	}
}

//
// comment API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtCommentAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the comments returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the comments and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a comment returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys comment_parent_id, comment_body, comment_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a comment and uses a callback function

		:params: a NSDictionary<String,String> using the keys comment_parent_id, comment_body, comment_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a comment returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys comment_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a comment and uses a callback function

		:params: a NSDictionary<String,String> using the keys comment_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A post must be edited by an author of the post returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys comment_id, comment_body, comment_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func edit(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/edit.json"
		return self.callAPI(params, headers: headers)
	}
	public func edit(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/edit.json"
		return self.callAPI(params)
	}
	/**
		A post must be edited by an author of the post and uses a callback function

		:params: a NSDictionary<String,String> using the keys comment_id, comment_body, comment_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func edit(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/edit.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func edit(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/edit.json"
		self.callAPI(params, callback: callback)
	}
	/**
		:params: NSDictionary<String,String>   	A dictionary having any of the keys comment_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/get.json"
		return self.callAPI(params)
	}
	/**
		:params: a NSDictionary<String,String> using the keys comment_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		:params: NSDictionary<String,String>   	A dictionary having any of the keys comment_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getRecursive(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/getrecursive.json"
		return self.callAPI(params, headers: headers)
	}
	public func getRecursive(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/getrecursive.json"
		return self.callAPI(params)
	}
	/**
		:params: a NSDictionary<String,String> using the keys comment_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getRecursive(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/getrecursive.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getRecursive(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/getrecursive.json"
		self.callAPI(params, callback: callback)
	}
	/**
		:params: NSDictionary<String,String>   	A dictionary having any of the keys comment_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getByParentIDRecursive(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/getbyparentidrecursive.json"
		return self.callAPI(params, headers: headers)
	}
	public func getByParentIDRecursive(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "comment/v1/getbyparentidrecursive.json"
		return self.callAPI(params)
	}
	/**
		:params: a NSDictionary<String,String> using the keys comment_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getByParentIDRecursive(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/getbyparentidrecursive.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getByParentIDRecursive(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "comment/v1/getbyparentidrecursive.json"
		self.callAPI(params, callback: callback)
	}
}

//
// contactsList API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtContactsListAPIObject: WhereYouAtAPIObject {
	/**
		A user must be logged in to create a list returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys contacts_list_contact_ids
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/adduser.json"
		return self.callAPI(params, headers: headers)
	}
	public func addUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/adduser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a list and uses a callback function

		:params: a NSDictionary<String,String> using the keys contacts_list_contact_ids
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/adduser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func addUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/adduser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to see all the lists returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the lists and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The users must have set a _long_lat their profiles returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys latitude, longitude, radius, user_profile_lat, user_profile_long, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/allnearby.json"
		return self.callAPI(params, headers: headers)
	}
	public func allNearby(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/allnearby.json"
		return self.callAPI(params)
	}
	/**
		The users must have set a _long_lat their profiles and uses a callback function

		:params: a NSDictionary<String,String> using the keys latitude, longitude, radius, user_profile_lat, user_profile_long, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/allnearby.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allNearby(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/allnearby.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a list returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys contacts_list_contact_ids
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a list and uses a callback function

		:params: a NSDictionary<String,String> using the keys contacts_list_contact_ids
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to decline a request returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func decline(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/decline.json"
		return self.callAPI(params, headers: headers)
	}
	public func decline(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/decline.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to decline a request and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func decline(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/decline.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func decline(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/decline.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a list returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys contacts_list_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a list and uses a callback function

		:params: a NSDictionary<String,String> using the keys contacts_list_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a list returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys contacts_list_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a list and uses a callback function

		:params: a NSDictionary<String,String> using the keys contacts_list_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a list returning a dispatch thread

	*/
	public func getForCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getforcurrentuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func getForCurrentUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getforcurrentuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a list and uses a callback function

	*/
	public func getForCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getforcurrentuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getForCurrentUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getforcurrentuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a list (alias of contactsList.getRequestsWithDetailsForCurrentUser(X-Auth-Token)) returning a dispatch thread

	*/
	public func getRequestsForCurrentUserWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getrequestsforcurrentuserwithdetails.json"
		return self.callAPI(params, headers: headers)
	}
	public func getRequestsForCurrentUserWithDetails(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getrequestsforcurrentuserwithdetails.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a list (alias of contactsList.getRequestsWithDetailsForCurrentUser(X-Auth-Token)) and uses a callback function

	*/
	public func getRequestsForCurrentUserWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getrequestsforcurrentuserwithdetails.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getRequestsForCurrentUserWithDetails(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getrequestsforcurrentuserwithdetails.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a list returning a dispatch thread

	*/
	public func getRequestsWithDetailsForCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getrequestswithdetailsforcurrentuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func getRequestsWithDetailsForCurrentUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getrequestswithdetailsforcurrentuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a list and uses a callback function

	*/
	public func getRequestsWithDetailsForCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getrequestswithdetailsforcurrentuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getRequestsWithDetailsForCurrentUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getrequestswithdetailsforcurrentuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a list returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys current_user_is_contact_of_user
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getForCurrentUserWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getforcurrentuserwithdetails.json"
		return self.callAPI(params, headers: headers)
	}
	public func getForCurrentUserWithDetails(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getforcurrentuserwithdetails.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a list and uses a callback function

		:params: a NSDictionary<String,String> using the keys current_user_is_contact_of_user
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getForCurrentUserWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getforcurrentuserwithdetails.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getForCurrentUserWithDetails(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getforcurrentuserwithdetails.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a list (alias of contactsList.getForCurrentUserWithDetails(X-Auth-Token)) returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys current_user_is_contact_of_user
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetailsForCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getwithdetailsforcurrentuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func getWithDetailsForCurrentUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/getwithdetailsforcurrentuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a list (alias of contactsList.getForCurrentUserWithDetails(X-Auth-Token)) and uses a callback function

		:params: a NSDictionary<String,String> using the keys current_user_is_contact_of_user
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetailsForCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getwithdetailsforcurrentuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getWithDetailsForCurrentUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/getwithdetailsforcurrentuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a list returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys contacts_list_contact_ids
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/removeuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func removeUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "contactslist/v1/removeuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a list and uses a callback function

		:params: a NSDictionary<String,String> using the keys contacts_list_contact_ids
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/removeuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func removeUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "contactslist/v1/removeuser.json"
		self.callAPI(params, callback: callback)
	}
}

//
// favorite API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtFavoriteAPIObject: WhereYouAtAPIObject {
	/**
		A user must be logged in to add a favorite returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys object_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func add(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "favorite/v1/add.json"
		return self.callAPI(params, headers: headers)
	}
	public func add(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "favorite/v1/add.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to add a favorite and uses a callback function

		:params: a NSDictionary<String,String> using the keys object_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func add(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "favorite/v1/add.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func add(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "favorite/v1/add.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to add a favorite returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys object_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func remove(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "favorite/v1/remove.json"
		return self.callAPI(params, headers: headers)
	}
	public func remove(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "favorite/v1/remove.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to add a favorite and uses a callback function

		:params: a NSDictionary<String,String> using the keys object_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func remove(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "favorite/v1/remove.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func remove(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "favorite/v1/remove.json"
		self.callAPI(params, callback: callback)
	}
}

//
// feed API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtFeedAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the Feed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the Feed and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Feed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_parent_id, show_elements, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentID(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/allbyparentid.json"
		return self.callAPI(params, headers: headers)
	}
	public func allByParentID(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/allbyparentid.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Feed and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_parent_id, show_elements, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentID(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/allbyparentid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allByParentID(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/allbyparentid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Feed can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_parent_id, feed_subject, feed_caption, feed_main_image_url, feed_cover_image_url, feed_contribution, feed_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func set(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/create.json"
		return self.callAPI(params)
	}
	/**
		Feed can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_parent_id, feed_subject, feed_caption, feed_main_image_url, feed_cover_image_url, feed_contribution, feed_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func set(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a Feed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a Feed and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Feed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Feed and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Feed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/getwithdetails.json"
		return self.callAPI(params, headers: headers)
	}
	public func getWithDetails(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/getwithdetails.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Feed and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/getwithdetails.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getWithDetails(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/getwithdetails.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Home Feed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_element_is_most_recent, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getHomeFeed(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/gethomefeed.json"
		return self.callAPI(params, headers: headers)
	}
	public func getHomeFeed(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feed/v1/gethomefeed.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Home Feed and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_element_is_most_recent, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getHomeFeed(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/gethomefeed.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getHomeFeed(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feed/v1/gethomefeed.json"
		self.callAPI(params, callback: callback)
	}
}

//
// feedElement API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtFeedElementAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the FeedElements returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the FeedElements and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only the visible feed elements will be shown returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_element_parent_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentId(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/allbyparentid.json"
		return self.callAPI(params, headers: headers)
	}
	public func allByParentId(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/allbyparentid.json"
		return self.callAPI(params)
	}
	/**
		Only the visible feed elements will be shown and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_element_parent_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentId(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/allbyparentid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allByParentId(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/allbyparentid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to createa FeedElement returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_element_feed_id, feed_element_title, feed_element_description, feed_element_main_image_url, feed_element_cover_image_url, feed_element_mood, feed_element_lat, feed_element_long, feed_element_appended_data_id, feed_element_attached_file_url, feed_element_post_to_public_feed, feed_element_post_anonymous, feed_element_visibility, feed_element_publication_date
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to createa FeedElement and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_element_feed_id, feed_element_title, feed_element_description, feed_element_main_image_url, feed_element_cover_image_url, feed_element_mood, feed_element_lat, feed_element_long, feed_element_appended_data_id, feed_element_attached_file_url, feed_element_post_to_public_feed, feed_element_post_anonymous, feed_element_visibility, feed_element_publication_date
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to deletea FeedElement returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_element_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to deletea FeedElement and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_element_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to geta FeedElement returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_element_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to geta FeedElement and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_element_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to index 2d data returning a dispatch thread

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/ensureindex.json"
		return self.callAPI(params, headers: headers)
	}
	public func ensureIndex(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/ensureindex.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to index 2d data and uses a callback function

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/ensureindex.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func ensureIndex(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/ensureindex.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in returning a dispatch thread

	*/
	public func migrate(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/migrate.json"
		return self.callAPI(params, headers: headers)
	}
	public func migrate(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/migrate.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in and uses a callback function

	*/
	public func migrate(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/migrate.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func migrate(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/migrate.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A post must be edited by an author of the post returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_element_id, feed_element_title, feed_element_description, feed_element_main_image_url, feed_element_cover_image_url, feed_element_mood, feed_element_lat, feed_element_long, feed_element_appended_data_id, feed_element_attached_file_url, feed_element_post_anonymous, feed_element_visibility, feed_element_publication_date
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedelement/v1/update.json"
		return self.callAPI(params)
	}
	/**
		A post must be edited by an author of the post and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_element_id, feed_element_title, feed_element_description, feed_element_main_image_url, feed_element_cover_image_url, feed_element_mood, feed_element_lat, feed_element_long, feed_element_appended_data_id, feed_element_attached_file_url, feed_element_post_anonymous, feed_element_visibility, feed_element_publication_date
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedelement/v1/update.json"
		self.callAPI(params, callback: callback)
	}
}

//
// feedFollow API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtFeedFollowAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the feedfollows returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the feedfollows and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a feedfollow returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a feedfollow and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a feedfollow returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_follow_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a feedfollow and uses a callback function

		:params: a NSDictionary<String,String> using the keys feed_follow_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a feedfollow returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func followUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/followuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func followUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/followuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a feedfollow and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func followUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/followuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func followUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/followuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		:params: NSDictionary<String,String>   	A dictionary having any of the keys feed_follow_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/get.json"
		return self.callAPI(params)
	}
	/**
		:params: a NSDictionary<String,String> using the keys feed_follow_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to destroy a feedfollow returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func unFollowUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/unfollowuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func unFollowUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedfollow/v1/unfollowuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to destroy a feedfollow and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func unFollowUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/unfollowuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func unFollowUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedfollow/v1/unfollowuser.json"
		self.callAPI(params, callback: callback)
	}
}

//
// feedback API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtFeedbackAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the Feedback returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the Feedback and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a Feedback returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feedback_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a Feedback and uses a callback function

		:params: a NSDictionary<String,String> using the keys feedback_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Feedback returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feedback_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Feedback and uses a callback function

		:params: a NSDictionary<String,String> using the keys feedback_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Feedback returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feedback_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getByParentID(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/getbyparentid.json"
		return self.callAPI(params, headers: headers)
	}
	public func getByParentID(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/getbyparentid.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Feedback and uses a callback function

		:params: a NSDictionary<String,String> using the keys feedback_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getByParentID(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/getbyparentid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getByParentID(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/getbyparentid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Feedback can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys feedback_id, feedback_parent_id, feedback_subject, feedback_body, feedback_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/set.json"
		return self.callAPI(params, headers: headers)
	}
	public func set(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "feedback/v1/set.json"
		return self.callAPI(params)
	}
	/**
		Feedback can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys feedback_id, feedback_parent_id, feedback_subject, feedback_body, feedback_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/set.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func set(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "feedback/v1/set.json"
		self.callAPI(params, callback: callback)
	}
}

//
// file API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtFileAPIObject: WhereYouAtAPIObject {
	/**
		Only the admin can get all the files returning a dispatch thread

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/all.json"
		return self.callAPI(params)
	}
	/**
		Only the admin can get all the files and uses a callback function

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to use this api returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys file_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentID(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/allbyparentid.json"
		return self.callAPI(params, headers: headers)
	}
	public func allByParentID(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/allbyparentid.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to use this api and uses a callback function

		:params: a NSDictionary<String,String> using the keys file_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentID(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/allbyparentid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allByParentID(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/allbyparentid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to use this api returning a dispatch thread

	*/
	public func allCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/allcurrentuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func allCurrentUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/allcurrentuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to use this api and uses a callback function

	*/
	public func allCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/allcurrentuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allCurrentUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/allcurrentuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Copies the reference to a new parent.  The new parent does not have to have a relationship to the original file. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys file_id, file_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func copyToParent(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/copytoparent.json"
		return self.callAPI(params, headers: headers)
	}
	public func copyToParent(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/copytoparent.json"
		return self.callAPI(params)
	}
	/**
		Copies the reference to a new parent.  The new parent does not have to have a relationship to the original file. and uses a callback function

		:params: a NSDictionary<String,String> using the keys file_id, file_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func copyToParent(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/copytoparent.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func copyToParent(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/copytoparent.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Deletes a file by its id.  You must be the creator or admin to delete a file. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys file_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		Deletes a file by its id.  You must be the creator or admin to delete a file. and uses a callback function

		:params: a NSDictionary<String,String> using the keys file_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Gets a file by its id.  And all the resolutions returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys file_id, file_location, file_key, file_name
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/get.json"
		return self.callAPI(params)
	}
	/**
		Gets a file by its id.  And all the resolutions and uses a callback function

		:params: a NSDictionary<String,String> using the keys file_id, file_location, file_key, file_name
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Gets an file.  The response is of the file's native MIME-TYPE if successful.  The file can be called statically. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys file_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func files(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/files.json"
		return self.callAPI(params, headers: headers)
	}
	public func files(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/files.json"
		return self.callAPI(params)
	}
	/**
		Gets an file.  The response is of the file's native MIME-TYPE if successful.  The file can be called statically. and uses a callback function

		:params: a NSDictionary<String,String> using the keys file_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func files(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/files.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func files(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/files.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Setting the parent id of the file. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys file_id, file_parent_id, file_title, file_description
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/update.json"
		return self.callAPI(params)
	}
	/**
		Setting the parent id of the file. and uses a callback function

		:params: a NSDictionary<String,String> using the keys file_id, file_parent_id, file_title, file_description
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/update.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Uploads an file.  Setting the file_parent_id will make it the parent.  If no file_parent_id is sent, the logged in user becomes the owner. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys file_parent_id, file_title, file_description
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
		:paths: [String]   	A path to a local file (such as NSBundle.mainBundle().pathForResource("image1", ofType: "png") as String!)
	*/
	public func upload(params: Dictionary<String, String>, headers: Dictionary<String, String>, paths: [String]) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/upload.json"
		return self.callFileAPI(params, headers: headers, paths: paths)
	}
	public func upload(params: Dictionary<String, String>, paths: [String]) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "file/v1/upload.json"
		return self.callFileAPI(params, paths: paths)
	}
	/**
		Uploads an file.  Setting the file_parent_id will make it the parent.  If no file_parent_id is sent, the logged in user becomes the owner. and uses a callback function

		:params: a NSDictionary<String,String> using the keys file_parent_id, file_title, file_description
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
		:paths: [String]   	A path to a local file (such as NSBundle.mainBundle().pathForResource("image1", ofType: "png") as String!)
	*/
	public func upload(params: Dictionary<String, String>, headers: Dictionary<String, String>, paths: [String], callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/upload.json"
		self.callFileAPI(params, headers: headers, paths: paths, callback: callback)
	}
	public func upload(params: Dictionary<String, String>, paths: [String], callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "file/v1/upload.json"
		self.callFileAPI(params, paths: paths, callback: callback)
	}
}

//
// functions API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtFunctionsAPIObject: WhereYouAtAPIObject {
	/**
		Attempts to group the API fields by their respective data objects returning a dispatch thread

	*/
	public func allDataObjects(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/alldataobjects.json"
		return self.callAPI(params, headers: headers)
	}
	public func allDataObjects(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/alldataobjects.json"
		return self.callAPI(params)
	}
	/**
		Attempts to group the API fields by their respective data objects and uses a callback function

	*/
	public func allDataObjects(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/alldataobjects.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allDataObjects(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/alldataobjects.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This is the list of strings that are passable for various parameters returning a dispatch thread

	*/
	public func allEnums(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/allenums.json"
		return self.callAPI(params, headers: headers)
	}
	public func allEnums(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/allenums.json"
		return self.callAPI(params)
	}
	/**
		This is the list of strings that are passable for various parameters and uses a callback function

	*/
	public func allEnums(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/allenums.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allEnums(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/allenums.json"
		self.callAPI(params, callback: callback)
	}
	/**
		You must first login using the auth string returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys Authorization, cookie, account, repository
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func bitbucketRepository(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/bitbucketrepository.json"
		return self.callAPI(params, headers: headers)
	}
	public func bitbucketRepository(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/bitbucketrepository.json"
		return self.callAPI(params)
	}
	/**
		You must first login using the auth string and uses a callback function

		:params: a NSDictionary<String,String> using the keys Authorization, cookie, account, repository
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func bitbucketRepository(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/bitbucketrepository.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func bitbucketRepository(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/bitbucketrepository.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can clear the error log returning a dispatch thread

	*/
	public func clearErrorLog(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/clearerrorlog.json"
		return self.callAPI(params, headers: headers)
	}
	public func clearErrorLog(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/clearerrorlog.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can clear the error log and uses a callback function

	*/
	public func clearErrorLog(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/clearerrorlog.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func clearErrorLog(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/clearerrorlog.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can compile returning a dispatch thread

	*/
	public func compileSDKs(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/compilesdks.json"
		return self.callAPI(params, headers: headers)
	}
	public func compileSDKs(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/compilesdks.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can compile and uses a callback function

	*/
	public func compileSDKs(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/compilesdks.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func compileSDKs(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/compilesdks.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can get the empty files list returning a dispatch thread

	*/
	public func emptyFiles(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/emptyfiles.json"
		return self.callAPI(params, headers: headers)
	}
	public func emptyFiles(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/emptyfiles.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can get the empty files list and uses a callback function

	*/
	public func emptyFiles(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/emptyfiles.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func emptyFiles(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/emptyfiles.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This will count the endpoints in the API returning a dispatch thread

	*/
	public func endpointCount(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/endpointcount.json"
		return self.callAPI(params, headers: headers)
	}
	public func endpointCount(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/endpointcount.json"
		return self.callAPI(params)
	}
	/**
		This will count the endpoints in the API and uses a callback function

	*/
	public func endpointCount(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/endpointcount.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func endpointCount(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/endpointcount.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can get the error log returning a dispatch thread

	*/
	public func errorLog(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/errorlog.json"
		return self.callAPI(params, headers: headers)
	}
	public func errorLog(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/errorlog.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can get the error log and uses a callback function

	*/
	public func errorLog(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/errorlog.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func errorLog(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/errorlog.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This will not check images loaded via JavaScript or CSS returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys url, enforce_extension
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func imagesFromURL(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/imagesfromurl.json"
		return self.callAPI(params, headers: headers)
	}
	public func imagesFromURL(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/imagesfromurl.json"
		return self.callAPI(params)
	}
	/**
		This will not check images loaded via JavaScript or CSS and uses a callback function

		:params: a NSDictionary<String,String> using the keys url, enforce_extension
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func imagesFromURL(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/imagesfromurl.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func imagesFromURL(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/imagesfromurl.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This will count the lines of code in the API returning a dispatch thread

	*/
	public func lineCount(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/linecount.json"
		return self.callAPI(params, headers: headers)
	}
	public func lineCount(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/linecount.json"
		return self.callAPI(params)
	}
	/**
		This will count the lines of code in the API and uses a callback function

	*/
	public func lineCount(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/linecount.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func lineCount(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/linecount.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method performs various mappings and translations returning a dispatch thread

	*/
	public func migrate(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/migrate.json"
		return self.callAPI(params, headers: headers)
	}
	public func migrate(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/migrate.json"
		return self.callAPI(params)
	}
	/**
		This method performs various mappings and translations and uses a callback function

	*/
	public func migrate(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/migrate.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func migrate(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/migrate.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can move random users returning a dispatch thread

	*/
	public func moveRandomUsers(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/moverandomusers.json"
		return self.callAPI(params, headers: headers)
	}
	public func moveRandomUsers(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/moverandomusers.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can move random users and uses a callback function

	*/
	public func moveRandomUsers(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/moverandomusers.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func moveRandomUsers(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/moverandomusers.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This uses the api.randomuser.me approach returning a dispatch thread

	*/
	public func randomUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/randomuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func randomUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/randomuser.json"
		return self.callAPI(params)
	}
	/**
		This uses the api.randomuser.me approach and uses a callback function

	*/
	public func randomUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/randomuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func randomUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/randomuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can repopulate data returning a dispatch thread

	*/
	public func repopulateVenues(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/repopulatevenues.json"
		return self.callAPI(params, headers: headers)
	}
	public func repopulateVenues(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/repopulatevenues.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can repopulate data and uses a callback function

	*/
	public func repopulateVenues(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/repopulatevenues.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func repopulateVenues(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/repopulatevenues.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can move random users returning a dispatch thread

	*/
	public func uniqueCategories(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/uniquecategories.json"
		return self.callAPI(params, headers: headers)
	}
	public func uniqueCategories(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "functions/v1/uniquecategories.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can move random users and uses a callback function

	*/
	public func uniqueCategories(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/uniquecategories.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func uniqueCategories(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "functions/v1/uniquecategories.json"
		self.callAPI(params, callback: callback)
	}
}

//
// geolocationBreadCrumb API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtGeolocationBreadCrumbAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the Bread Crumbs returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the Bread Crumbs and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a Bread Crumb returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys geolocation_breadcrumb_lat, geolocation_breadcrumb_long, geolocation_breadcrumb_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a Bread Crumb and uses a callback function

		:params: a NSDictionary<String,String> using the keys geolocation_breadcrumb_lat, geolocation_breadcrumb_long, geolocation_breadcrumb_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a Bread Crumb returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a Bread Crumb and uses a callback function

		:params: a NSDictionary<String,String> using the keys id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to index 2d data returning a dispatch thread

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/ensureindex.json"
		return self.callAPI(params, headers: headers)
	}
	public func ensureIndex(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/ensureindex.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to index 2d data and uses a callback function

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/ensureindex.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func ensureIndex(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/ensureindex.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Bread Crumb returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Bread Crumb and uses a callback function

		:params: a NSDictionary<String,String> using the keys id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A bread crumb can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys geolocation_breadcrumb_id, geolocation_breadcrumb_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/update.json"
		return self.callAPI(params)
	}
	/**
		A bread crumb can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys geolocation_breadcrumb_id, geolocation_breadcrumb_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "geolocationbreadcrumb/v1/update.json"
		self.callAPI(params, callback: callback)
	}
}

//
// group API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtGroupAPIObject: WhereYouAtAPIObject {
	/**
		Only the admin can add an admin returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addAdmin(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/addadmin.json"
		return self.callAPI(params, headers: headers)
	}
	public func addAdmin(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/addadmin.json"
		return self.callAPI(params)
	}
	/**
		Only the admin can add an admin and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addAdmin(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/addadmin.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func addAdmin(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/addadmin.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only the admin can add a member to a group returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addMember(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/addmember.json"
		return self.callAPI(params, headers: headers)
	}
	public func addMember(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/addmember.json"
		return self.callAPI(params)
	}
	/**
		Only the admin can add a member to a group and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addMember(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/addmember.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func addMember(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/addmember.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Anyone can request to join a group returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addRequest(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/addrequest.json"
		return self.callAPI(params, headers: headers)
	}
	public func addRequest(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/addrequest.json"
		return self.callAPI(params)
	}
	/**
		Anyone can request to join a group and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addRequest(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/addrequest.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func addRequest(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/addrequest.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only the admin can get all the groups returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/all.json"
		return self.callAPI(params)
	}
	/**
		Only the admin can get all the groups and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to see the groups returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/allwithdetails.json"
		return self.callAPI(params, headers: headers)
	}
	public func allWithDetails(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/allwithdetails.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to see the groups and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/allwithdetails.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allWithDetails(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/allwithdetails.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The groups maps to a unique url returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_handle, group_name
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/create.json"
		return self.callAPI(params)
	}
	/**
		The groups maps to a unique url and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_handle, group_name
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Deletes a group by its id.  You must be the creator or admin to delete a group. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		Deletes a group by its id.  You must be the creator or admin to delete a group. and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Gets a group by its id or by its handle. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/get.json"
		return self.callAPI(params)
	}
	/**
		Gets a group by its id or by its handle. and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Gets a group by its id or by its handle - and returns user details. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/getwithdetails.json"
		return self.callAPI(params, headers: headers)
	}
	public func getWithDetails(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/getwithdetails.json"
		return self.callAPI(params)
	}
	/**
		Gets a group by its id or by its handle - and returns user details. and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/getwithdetails.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getWithDetails(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/getwithdetails.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only the admin can remove an admin returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeAdmin(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/removeadmin.json"
		return self.callAPI(params, headers: headers)
	}
	public func removeAdmin(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/removeadmin.json"
		return self.callAPI(params)
	}
	/**
		Only the admin can remove an admin and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeAdmin(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/removeadmin.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func removeAdmin(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/removeadmin.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only the admin can remove a member from a group returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeMember(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/removemember.json"
		return self.callAPI(params, headers: headers)
	}
	public func removeMember(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/removemember.json"
		return self.callAPI(params)
	}
	/**
		Only the admin can remove a member from a group and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeMember(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/removemember.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func removeMember(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/removemember.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The requester can remove his or her request returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeRequest(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/removerequest.json"
		return self.callAPI(params, headers: headers)
	}
	public func removeRequest(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/removerequest.json"
		return self.callAPI(params)
	}
	/**
		The requester can remove his or her request and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeRequest(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/removerequest.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func removeRequest(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/removerequest.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only the admin can make an update to a group returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys group_id, group_handle, group_name, group_description, group_main_image_url, group_cover_image_url, group_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "group/v1/update.json"
		return self.callAPI(params)
	}
	/**
		Only the admin can make an update to a group and uses a callback function

		:params: a NSDictionary<String,String> using the keys group_id, group_handle, group_name, group_description, group_main_image_url, group_cover_image_url, group_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "group/v1/update.json"
		self.callAPI(params, callback: callback)
	}
}

//
// image API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtImageAPIObject: WhereYouAtAPIObject {
	/**
		Only the admin can get all the images returning a dispatch thread

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/all.json"
		return self.callAPI(params)
	}
	/**
		Only the admin can get all the images and uses a callback function

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to use this api returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentID(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/allbyparentid.json"
		return self.callAPI(params, headers: headers)
	}
	public func allByParentID(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/allbyparentid.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to use this api and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentID(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/allbyparentid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allByParentID(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/allbyparentid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to use this api returning a dispatch thread

	*/
	public func allCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/allcurrentuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func allCurrentUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/allcurrentuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to use this api and uses a callback function

	*/
	public func allCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/allcurrentuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allCurrentUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/allcurrentuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Copies the reference to a new parent.  The new parent does not have to have a relationship to the original image. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_id, image_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func copyToParent(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/copytoparent.json"
		return self.callAPI(params, headers: headers)
	}
	public func copyToParent(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/copytoparent.json"
		return self.callAPI(params)
	}
	/**
		Copies the reference to a new parent.  The new parent does not have to have a relationship to the original image. and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_id, image_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func copyToParent(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/copytoparent.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func copyToParent(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/copytoparent.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Deletes a image by its id.  You must be the creator or admin to delete a image. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		Deletes a image by its id.  You must be the creator or admin to delete a image. and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Gets a image by its id.  And all the resolutions returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_id, image_location, image_key, image_file_name
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/get.json"
		return self.callAPI(params)
	}
	/**
		Gets a image by its id.  And all the resolutions and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_id, image_location, image_key, image_file_name
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Gets an image.  The response is of the image's native MIME-TYPE if successful.  The image can be called statically. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func images(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/images.json"
		return self.callAPI(params, headers: headers)
	}
	public func images(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/images.json"
		return self.callAPI(params)
	}
	/**
		Gets an image.  The response is of the image's native MIME-TYPE if successful.  The image can be called statically. and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func images(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/images.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func images(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/images.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Rotates an image counterclockwise returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_id, image_location, image_file_name, image_rotation, image_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func rotate(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/rotate.json"
		return self.callAPI(params, headers: headers)
	}
	public func rotate(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/rotate.json"
		return self.callAPI(params)
	}
	/**
		Rotates an image counterclockwise and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_id, image_location, image_file_name, image_rotation, image_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func rotate(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/rotate.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func rotate(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/rotate.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Setting the parent id of the image. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_id, image_parent_id, image_title, image_description, image_alt_text
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/update.json"
		return self.callAPI(params)
	}
	/**
		Setting the parent id of the image. and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_id, image_parent_id, image_title, image_description, image_alt_text
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/update.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Uploads an image.  Setting the image_parent_id will make it the parent.  If no image_parent_id is sent, the logged in user becomes the owner. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_parent_id, image_title, image_description, image_alt_text
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
		:paths: [String]   	A path to a local file (such as NSBundle.mainBundle().pathForResource("image1", ofType: "png") as String!)
	*/
	public func upload(params: Dictionary<String, String>, headers: Dictionary<String, String>, paths: [String]) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/upload.json"
		return self.callFileAPI(params, headers: headers, paths: paths)
	}
	public func upload(params: Dictionary<String, String>, paths: [String]) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "image/v1/upload.json"
		return self.callFileAPI(params, paths: paths)
	}
	/**
		Uploads an image.  Setting the image_parent_id will make it the parent.  If no image_parent_id is sent, the logged in user becomes the owner. and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_parent_id, image_title, image_description, image_alt_text
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
		:paths: [String]   	A path to a local file (such as NSBundle.mainBundle().pathForResource("image1", ofType: "png") as String!)
	*/
	public func upload(params: Dictionary<String, String>, headers: Dictionary<String, String>, paths: [String], callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/upload.json"
		self.callFileAPI(params, headers: headers, paths: paths, callback: callback)
	}
	public func upload(params: Dictionary<String, String>, paths: [String], callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/upload.json"
		self.callFileAPI(params, paths: paths, callback: callback)
	}
	public func upload(params: Dictionary<String, String>, headers: Dictionary<String, String>, images: [UIImage], callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "image/v1/upload.json"
		self.callFileAPI(params, headers: headers, images: images, callback: callback)
	}
}

//
// imageAlbum API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtImageAlbumAPIObject: WhereYouAtAPIObject {
	/**
		Only the album owner can add an author returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_id, user_id, user_username, team_id, team_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addAuthor(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/addauthor.json"
		return self.callAPI(params, headers: headers)
	}
	public func addAuthor(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/addauthor.json"
		return self.callAPI(params)
	}
	/**
		Only the album owner can add an author and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_id, user_id, user_username, team_id, team_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addAuthor(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/addauthor.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func addAuthor(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/addauthor.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only the album contributor can add an image returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_id, image_id, image_location
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addImage(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/addimage.json"
		return self.callAPI(params, headers: headers)
	}
	public func addImage(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/addimage.json"
		return self.callAPI(params)
	}
	/**
		Only the album contributor can add an image and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_id, image_id, image_location
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addImage(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/addimage.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func addImage(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/addimage.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to see all the Albums returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the Albums and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Gets all the Albums owned by a parent returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_parent_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentId(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/allbyparentid.json"
		return self.callAPI(params, headers: headers)
	}
	public func allByParentId(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/allbyparentid.json"
		return self.callAPI(params)
	}
	/**
		Gets all the Albums owned by a parent and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_parent_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentId(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/allbyparentid.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allByParentId(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/allbyparentid.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Gets all the Albums owned by a parent, with all images and author information returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_parent_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentIdWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/allbyparentidwithdetails.json"
		return self.callAPI(params, headers: headers)
	}
	public func allByParentIdWithDetails(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/allbyparentidwithdetails.json"
		return self.callAPI(params)
	}
	/**
		Gets all the Albums owned by a parent, with all images and author information and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_parent_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allByParentIdWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/allbyparentidwithdetails.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allByParentIdWithDetails(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/allbyparentidwithdetails.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to see all the Albums returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allEditable(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/alleditable.json"
		return self.callAPI(params, headers: headers)
	}
	public func allEditable(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/alleditable.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the Albums and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allEditable(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/alleditable.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allEditable(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/alleditable.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a Album returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_parent_id, image_album_title, image_album_handle, image_album_caption, image_album_description, image_album_contribution_open_to, image_album_main_image_url, image_album_cover_image_url, latitude, longitude, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a Album and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_parent_id, image_album_title, image_album_handle, image_album_caption, image_album_description, image_album_contribution_open_to, image_album_main_image_url, image_album_cover_image_url, latitude, longitude, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a Album returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_id, image_album_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a Album and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_id, image_album_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to index 2d data returning a dispatch thread

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/ensureindex.json"
		return self.callAPI(params, headers: headers)
	}
	public func ensureIndex(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/ensureindex.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to index 2d data and uses a callback function

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/ensureindex.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func ensureIndex(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/ensureindex.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Album if it is not public returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_id, image_album_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Album if it is not public and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_id, image_album_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Album details returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_id, image_album_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/getwithdetails.json"
		return self.callAPI(params, headers: headers)
	}
	public func getWithDetails(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/getwithdetails.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Album details and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_id, image_album_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/getwithdetails.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getWithDetails(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/getwithdetails.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An owner of the album may add or remove an author returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_id, image_album_parent_id, user_id, user_username, team_id, team_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeAuthor(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/removeauthor.json"
		return self.callAPI(params, headers: headers)
	}
	public func removeAuthor(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/removeauthor.json"
		return self.callAPI(params)
	}
	/**
		An owner of the album may add or remove an author and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_id, image_album_parent_id, user_id, user_username, team_id, team_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeAuthor(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/removeauthor.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func removeAuthor(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/removeauthor.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an album contributor can remove an image returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_id, image_id, image_location
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeImage(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/removeimage.json"
		return self.callAPI(params, headers: headers)
	}
	public func removeImage(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/removeimage.json"
		return self.callAPI(params)
	}
	/**
		Only an album contributor can remove an image and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_id, image_id, image_location
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeImage(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/removeimage.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func removeImage(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/removeimage.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An ImageAlbum can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys image_album_id, image_album_parent_id, image_album_title, image_album_handle, image_album_syndication, image_album_caption, image_album_description, image_album_contribution_open_to, image_album_main_image_url, image_album_cover_image_url, latitude, longitude, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "imagealbum/v1/update.json"
		return self.callAPI(params)
	}
	/**
		An ImageAlbum can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys image_album_id, image_album_parent_id, image_album_title, image_album_handle, image_album_syndication, image_album_caption, image_album_description, image_album_contribution_open_to, image_album_main_image_url, image_album_cover_image_url, latitude, longitude, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "imagealbum/v1/update.json"
		self.callAPI(params, callback: callback)
	}
}

//
// like API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtLikeAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the likes returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "like/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "like/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the likes and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "like/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "like/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a like returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys like_parent_id, like_type
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "like/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "like/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a like and uses a callback function

		:params: a NSDictionary<String,String> using the keys like_parent_id, like_type
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "like/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "like/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a like returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys like_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "like/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "like/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a like and uses a callback function

		:params: a NSDictionary<String,String> using the keys like_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "like/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "like/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		:params: NSDictionary<String,String>   	A dictionary having any of the keys like_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "like/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "like/v1/get.json"
		return self.callAPI(params)
	}
	/**
		:params: a NSDictionary<String,String> using the keys like_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "like/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "like/v1/get.json"
		self.callAPI(params, callback: callback)
	}
}

//
// message API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtMessageAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the messages returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the messages and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to see all messages returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_author_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allFromIDToCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allfromidtocurrentuser.json"
		return self.callAPI(params, headers: headers)
	}
	public func allFromIDToCurrentUser(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allfromidtocurrentuser.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to see all messages and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_author_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allFromIDToCurrentUser(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allfromidtocurrentuser.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allFromIDToCurrentUser(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allfromidtocurrentuser.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to see all messages returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allMessageThreads(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allmessagethreads.json"
		return self.callAPI(params, headers: headers)
	}
	public func allMessageThreads(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allmessagethreads.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to see all messages and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allMessageThreads(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allmessagethreads.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allMessageThreads(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allmessagethreads.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only seen messages are displayed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allSeen(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allseen.json"
		return self.callAPI(params, headers: headers)
	}
	public func allSeen(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allseen.json"
		return self.callAPI(params)
	}
	/**
		Only seen messages are displayed and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allSeen(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allseen.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allSeen(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allseen.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Threads and users are displayed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allThreads(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allthreads.json"
		return self.callAPI(params, headers: headers)
	}
	public func allThreads(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allthreads.json"
		return self.callAPI(params)
	}
	/**
		Threads and users are displayed and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allThreads(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allthreads.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allThreads(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allthreads.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only unseen messages are displayed returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allUnseen(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allunseen.json"
		return self.callAPI(params, headers: headers)
	}
	public func allUnseen(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/allunseen.json"
		return self.callAPI(params)
	}
	/**
		Only unseen messages are displayed and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allUnseen(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allunseen.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allUnseen(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/allunseen.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_string, message_recipient_ids, message_subject, message_body, message_attachment_url, message_mood, message_lat, message_long, message_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_string, message_recipient_ids, message_subject, message_body, message_attachment_url, message_mood, message_lat, message_long, message_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func deleteRecursive(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/deleterecursive.json"
		return self.callAPI(params, headers: headers)
	}
	public func deleteRecursive(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/deleterecursive.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func deleteRecursive(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/deleterecursive.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func deleteRecursive(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/deleterecursive.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A post must be edited by an author of the post returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id, message_subject, message_body, message_attachment_url, message_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func edit(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/edit.json"
		return self.callAPI(params, headers: headers)
	}
	public func edit(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/edit.json"
		return self.callAPI(params)
	}
	/**
		A post must be edited by an author of the post and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id, message_subject, message_body, message_attachment_url, message_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func edit(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/edit.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func edit(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/edit.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to index 2d data returning a dispatch thread

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/ensureindex.json"
		return self.callAPI(params, headers: headers)
	}
	public func ensureIndex(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/ensureindex.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to index 2d data and uses a callback function

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/ensureindex.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func ensureIndex(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/ensureindex.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a message thread returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getThread(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/getthread.json"
		return self.callAPI(params, headers: headers)
	}
	public func getThread(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/getthread.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a message thread and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getThread(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/getthread.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getThread(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/getthread.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to leave a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id, message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func leave(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/leave.json"
		return self.callAPI(params, headers: headers)
	}
	public func leave(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/leave.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to leave a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id, message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func leave(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/leave.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func leave(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/leave.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to see a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id, message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func markSeen(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/markseen.json"
		return self.callAPI(params, headers: headers)
	}
	public func markSeen(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/markseen.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to see a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id, message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func markSeen(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/markseen.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func markSeen(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/markseen.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to decide they didn't see a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func markUnseen(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/markunseen.json"
		return self.callAPI(params, headers: headers)
	}
	public func markUnseen(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/markunseen.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to decide they didn't see a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func markUnseen(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/markunseen.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func markUnseen(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/markunseen.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to reply to a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id, message_subject, message_body, message_attachment_url, message_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func reply(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/reply.json"
		return self.callAPI(params, headers: headers)
	}
	public func reply(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/reply.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to reply to a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id, message_subject, message_body, message_attachment_url, message_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func reply(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/reply.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func reply(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/reply.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to reply to a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_id, message_subject, message_body, message_attachment_url, message_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func replyAll(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/replyall.json"
		return self.callAPI(params, headers: headers)
	}
	public func replyAll(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/replyall.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to reply to a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_id, message_subject, message_body, message_attachment_url, message_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func replyAll(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/replyall.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func replyAll(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/replyall.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to reply to a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_string, message_subject, message_body, message_attachment_url, message_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func replyThread(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/replythread.json"
		return self.callAPI(params, headers: headers)
	}
	public func replyThread(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "message/v1/replythread.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to reply to a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_string, message_subject, message_body, message_attachment_url, message_mood
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func replyThread(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/replythread.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func replyThread(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "message/v1/replythread.json"
		self.callAPI(params, callback: callback)
	}
}

//
// messageThread API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtMessageThreadAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the messages returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the messages and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		You will also see the users who wrote the messages returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allUnseen(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/allunseen.json"
		return self.callAPI(params, headers: headers)
	}
	public func allUnseen(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/allunseen.json"
		return self.callAPI(params)
	}
	/**
		You will also see the users who wrote the messages and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allUnseen(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/allunseen.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allUnseen(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/allunseen.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_thread_string, message_thread_recipient_ids, message_thread_subject, message_thread_body, message_thread_lat, message_thread_long, message_thread_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_thread_string, message_thread_recipient_ids, message_thread_subject, message_thread_body, message_thread_lat, message_thread_long, message_thread_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A recipient must be logged in returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/getwithdetails.json"
		return self.callAPI(params, headers: headers)
	}
	public func getWithDetails(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/getwithdetails.json"
		return self.callAPI(params)
	}
	/**
		A recipient must be logged in and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_id, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func getWithDetails(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/getwithdetails.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func getWithDetails(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/getwithdetails.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to join a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_id, message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func join(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/join.json"
		return self.callAPI(params, headers: headers)
	}
	public func join(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/join.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to join a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_id, message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func join(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/join.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func join(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/join.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to leave a message returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys message_thread_id, message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func leave(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/leave.json"
		return self.callAPI(params, headers: headers)
	}
	public func leave(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "messagethread/v1/leave.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to leave a message and uses a callback function

		:params: a NSDictionary<String,String> using the keys message_thread_id, message_thread_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func leave(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/leave.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func leave(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "messagethread/v1/leave.json"
		self.callAPI(params, callback: callback)
	}
}

//
// reportedContent API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtReportedContentAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the reported contents returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "reportedcontent/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "reportedcontent/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the reported contents and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "reportedcontent/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "reportedcontent/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged report content returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys report_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "reportedContent/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "reportedContent/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged report content and uses a callback function

		:params: a NSDictionary<String,String> using the keys report_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "reportedContent/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "reportedContent/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a reported on content returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys report_content_id, report_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "reportedcontent/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "reportedcontent/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a reported on content and uses a callback function

		:params: a NSDictionary<String,String> using the keys report_content_id, report_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "reportedcontent/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "reportedcontent/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
}

//
// search API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtSearchAPIObject: WhereYouAtAPIObject {
	/**
		Searches various collections to find results the user can see returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys terms
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/all.json"
		return self.callAPI(params)
	}
	/**
		Searches various collections to find results the user can see and uses a callback function

		:params: a NSDictionary<String,String> using the keys terms
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Searches the api documentation, returning results with a given match returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys terms
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func apiDocumentation(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/apidocumentation.json"
		return self.callAPI(params, headers: headers)
	}
	public func apiDocumentation(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/apidocumentation.json"
		return self.callAPI(params)
	}
	/**
		Searches the api documentation, returning results with a given match and uses a callback function

		:params: a NSDictionary<String,String> using the keys terms
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func apiDocumentation(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/apidocumentation.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func apiDocumentation(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/apidocumentation.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to search contacts returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys terms
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func contacts(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/contacts.json"
		return self.callAPI(params, headers: headers)
	}
	public func contacts(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/contacts.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to search contacts and uses a callback function

		:params: a NSDictionary<String,String> using the keys terms
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func contacts(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/contacts.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func contacts(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/contacts.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Searches users to find the most relevant result returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys terms, user_profile_age, user_profile_min_age, user_profile_max_age, user_profile_gender
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func user(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/user.json"
		return self.callAPI(params, headers: headers)
	}
	public func user(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/user.json"
		return self.callAPI(params)
	}
	/**
		Searches users to find the most relevant result and uses a callback function

		:params: a NSDictionary<String,String> using the keys terms, user_profile_age, user_profile_min_age, user_profile_max_age, user_profile_gender
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func user(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/user.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func user(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/user.json"
		self.callAPI(params, callback: callback)
	}
	/**
		<p>Uses various third party services to find nearby results</p>
                            <p>(try calling <a href="https://api-wya.rhcloud.com/api/v1/search/v1/venue?latitude=34.0767926&longitude=-118.3045665">https://api-wya.rhcloud.com/api/v1/search/v1/venue?latitude=34.0767926&longitude=-118.3045665</a> or
                            <a href="https://api-wya.rhcloud.com/api/v1/search/v1/venue?location=Los%20Angeles%2C%20CA">https://api-wya.rhcloud.com/api/v1/search/v1/venue?location=Los%20Angeles%2C%20CA</a>)</p>
                             returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys latitude, longitude, location, terms, category, radius, venue_verified
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func venue(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/venue.json"
		return self.callAPI(params, headers: headers)
	}
	public func venue(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "search/v1/venue.json"
		return self.callAPI(params)
	}
	/**
		<p>Uses various third party services to find nearby results</p>
                            <p>(try calling <a href="https://api-wya.rhcloud.com/api/v1/search/v1/venue?latitude=34.0767926&longitude=-118.3045665">https://api-wya.rhcloud.com/api/v1/search/v1/venue?latitude=34.0767926&longitude=-118.3045665</a> or
                            <a href="https://api-wya.rhcloud.com/api/v1/search/v1/venue?location=Los%20Angeles%2C%20CA">https://api-wya.rhcloud.com/api/v1/search/v1/venue?location=Los%20Angeles%2C%20CA</a>)</p>
                             and uses a callback function

		:params: a NSDictionary<String,String> using the keys latitude, longitude, location, terms, category, radius, venue_verified
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func venue(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/venue.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func venue(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "search/v1/venue.json"
		self.callAPI(params, callback: callback)
	}
}

//
// seenContent API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtSeenContentAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the seen contents returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "seencontent/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "seencontent/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the seen contents and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "seencontent/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "seencontent/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged see content returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys seen_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "seenContent/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "seenContent/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged see content and uses a callback function

		:params: a NSDictionary<String,String> using the keys seen_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "seenContent/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "seenContent/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a seen on content returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys seen_content_id, seen_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "seencontent/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "seencontent/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a seen on content and uses a callback function

		:params: a NSDictionary<String,String> using the keys seen_content_id, seen_content_parent_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "seencontent/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "seencontent/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
}

//
// swipe API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtSwipeAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the swipes returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "swipe/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "swipe/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the swipes and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "swipe/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "swipe/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a swipe returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys swipe_parent_id, swipe_type
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "swipe/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "swipe/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a swipe and uses a callback function

		:params: a NSDictionary<String,String> using the keys swipe_parent_id, swipe_type
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "swipe/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "swipe/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a swipe returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys swipe_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "swipe/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "swipe/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a swipe and uses a callback function

		:params: a NSDictionary<String,String> using the keys swipe_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "swipe/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "swipe/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		:params: NSDictionary<String,String>   	A dictionary having any of the keys swipe_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "swipe/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "swipe/v1/get.json"
		return self.callAPI(params)
	}
	/**
		:params: a NSDictionary<String,String> using the keys swipe_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "swipe/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "swipe/v1/get.json"
		self.callAPI(params, callback: callback)
	}
}

//
// user API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtUserAPIObject: WhereYouAtAPIObject {
	/**
		Adds an email address from a user. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id, user_email_address
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addEmail(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/addemail.json"
		return self.callAPI(params, headers: headers)
	}
	public func addEmail(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/addemail.json"
		return self.callAPI(params)
	}
	/**
		Adds an email address from a user. and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id, user_email_address
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func addEmail(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/addemail.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func addEmail(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/addemail.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can display all the users returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys show_random, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/all.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can display all the users and uses a callback function

		:params: a NSDictionary<String,String> using the keys show_random, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can display all the users returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys latitude, longitude, radius, user_profile_lat, user_profile_long, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/allnearby.json"
		return self.callAPI(params, headers: headers)
	}
	public func allNearby(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/allnearby.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can display all the users and uses a callback function

		:params: a NSDictionary<String,String> using the keys latitude, longitude, radius, user_profile_lat, user_profile_long, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/allnearby.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allNearby(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/allnearby.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can display all the users returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys reset_password, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allRandom(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/allrandom.json"
		return self.callAPI(params, headers: headers)
	}
	public func allRandom(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/allrandom.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can display all the users and uses a callback function

		:params: a NSDictionary<String,String> using the keys reset_password, limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allRandom(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/allrandom.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allRandom(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/allrandom.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only the logged in user can change its password.  The user must enter the current password, and then the new password twice along with the username. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_username, user_password, user_password_new, user_password_new_2
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func changePassword(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/changepassword.json"
		return self.callAPI(params, headers: headers)
	}
	public func changePassword(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/changepassword.json"
		return self.callAPI(params)
	}
	/**
		Only the logged in user can change its password.  The user must enter the current password, and then the new password twice along with the username. and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_username, user_password, user_password_new, user_password_new_2
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func changePassword(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/changepassword.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func changePassword(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/changepassword.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user account can be created using a user_username, user_email_address, and user_password. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_username, user_password, user_email_address, user_first_name, user_last_name, user_display_name, user_verified_by_admin, user_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user account can be created using a user_username, user_email_address, and user_password. and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_username, user_password, user_email_address, user_first_name, user_last_name, user_display_name, user_verified_by_admin, user_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Simply creates a username by the authentication provided.  The username will be some random string.  The auth id (Facebook, Apple, etc) must be given. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func createByAuth(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/createbyauth.json"
		return self.callAPI(params, headers: headers)
	}
	public func createByAuth(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/createbyauth.json"
		return self.callAPI(params)
	}
	/**
		Simply creates a username by the authentication provided.  The username will be some random string.  The auth id (Facebook, Apple, etc) must be given. and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func createByAuth(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/createbyauth.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func createByAuth(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/createbyauth.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This api will work if an session is established or an X-Auth-Token header is sent returning a dispatch thread

	*/
	public func current(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/current.json"
		return self.callAPI(params, headers: headers)
	}
	public func current(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/current.json"
		return self.callAPI(params)
	}
	/**
		This api will work if an session is established or an X-Auth-Token header is sent and uses a callback function

	*/
	public func current(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/current.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func current(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/current.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can delete a user account. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id, user_username, user_email_address
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can delete a user account. and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id, user_username, user_email_address
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only an admin can delete user accounts. returning a dispatch thread

	*/
	public func deleteRandom(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/deleterandom.json"
		return self.callAPI(params, headers: headers)
	}
	public func deleteRandom(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/deleterandom.json"
		return self.callAPI(params)
	}
	/**
		Only an admin can delete user accounts. and uses a callback function

	*/
	public func deleteRandom(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/deleterandom.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func deleteRandom(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/deleterandom.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Only a user can delete its own user account. returning a dispatch thread

	*/
	public func destroy(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/destroy.json"
		return self.callAPI(params, headers: headers)
	}
	public func destroy(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/destroy.json"
		return self.callAPI(params)
	}
	/**
		Only a user can delete its own user account. and uses a callback function

	*/
	public func destroy(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/destroy.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func destroy(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/destroy.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An email will be sent to the user's listed addresses returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func forgotPassword(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/forgotpassword.json"
		return self.callAPI(params, headers: headers)
	}
	public func forgotPassword(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/forgotpassword.json"
		return self.callAPI(params)
	}
	/**
		An email will be sent to the user's listed addresses and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func forgotPassword(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/forgotpassword.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func forgotPassword(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/forgotpassword.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to see information on another user returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_username, user_email_address, user_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to see information on another user and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_username, user_email_address, user_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The user can log in using user_email_address or user_username with a user_password. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_username, user_password
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func login(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/login.json"
		return self.callAPI(params, headers: headers)
	}
	public func login(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/login.json"
		return self.callAPI(params)
	}
	/**
		The user can log in using user_email_address or user_username with a user_password. and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_username, user_password
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func login(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/login.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func login(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/login.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method logs out the current user returning a dispatch thread

	*/
	public func logout(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/logout.json"
		return self.callAPI(params, headers: headers)
	}
	public func logout(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/logout.json"
		return self.callAPI(params)
	}
	/**
		This method logs out the current user and uses a callback function

	*/
	public func logout(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/logout.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func logout(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/logout.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method will log out the user completely.  All devices will have to log back in. returning a dispatch thread

	*/
	public func logoutAll(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/logoutall.json"
		return self.callAPI(params, headers: headers)
	}
	public func logoutAll(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/logoutall.json"
		return self.callAPI(params)
	}
	/**
		This method will log out the user completely.  All devices will have to log back in. and uses a callback function

	*/
	public func logoutAll(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/logoutall.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func logoutAll(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/logoutall.json"
		self.callAPI(params, callback: callback)
	}
	/**
		Removes an email address from a user. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id, user_email_address
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeEmail(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/removeemail.json"
		return self.callAPI(params, headers: headers)
	}
	public func removeEmail(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/removeemail.json"
		return self.callAPI(params)
	}
	/**
		Removes an email address from a user. and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id, user_email_address
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func removeEmail(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/removeemail.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func removeEmail(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/removeemail.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method can update a user based on what parameters are sent. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_id, user_username, user_main_image_url, user_cover_image_url, user_description, user_first_name, user_last_name, user_email_address, user_verified_by_admin, user_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "user/v1/update.json"
		return self.callAPI(params)
	}
	/**
		This method can update a user based on what parameters are sent. and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_id, user_username, user_main_image_url, user_cover_image_url, user_description, user_first_name, user_last_name, user_email_address, user_verified_by_admin, user_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "user/v1/update.json"
		self.callAPI(params, callback: callback)
	}
}

//
// userFilters API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtUserFiltersAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the UserFilters returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the UserFilters and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get his or her Filter returning a dispatch thread

	*/
	public func current(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/current.json"
		return self.callAPI(params, headers: headers)
	}
	public func current(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/current.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get his or her Filter and uses a callback function

	*/
	public func current(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/current.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func current(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/current.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a User Filters returning a dispatch thread

	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a User Filters and uses a callback function

	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a UserFilters returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_filter_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a UserFilters and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_filter_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An UserFilters can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_filter_radius, user_filter_user_profile_distance, user_filter_user_profile_distance_sort, user_filter_user_profile_max_age, user_filter_user_profile_min_age, user_filter_user_profile_age_sort, user_filter_user_profile_gender
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/set.json"
		return self.callAPI(params, headers: headers)
	}
	public func set(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userfilters/v1/set.json"
		return self.callAPI(params)
	}
	/**
		An UserFilters can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_filter_radius, user_filter_user_profile_distance, user_filter_user_profile_distance_sort, user_filter_user_profile_max_age, user_filter_user_profile_min_age, user_filter_user_profile_age_sort, user_filter_user_profile_gender
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/set.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func set(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userfilters/v1/set.json"
		self.callAPI(params, callback: callback)
	}
}

//
// userProfile API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtUserProfileAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the UserProfiles returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the UserProfiles and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a User Profile returning a dispatch thread

	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a User Profile and uses a callback function

	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to index 2d data returning a dispatch thread

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/ensureindex.json"
		return self.callAPI(params, headers: headers)
	}
	public func ensureIndex(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/ensureindex.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to index 2d data and uses a callback function

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/ensureindex.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func ensureIndex(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/ensureindex.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a UserProfile returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_profile_id, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a UserProfile and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_profile_id, user_id, user_username
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A User Profile can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_profile_activity_status, user_profile_activity_status_visibility, user_profile_gender, user_profile_phone_number, user_profile_phone_number_visibility, user_profile_title, user_profile_title_visibility, user_profile_interests, user_profile_interests_visibility, user_profile_employer, user_profile_employer_visibility, user_profile_employer_address, user_profile_employer_address_visibility, user_profile_birthday, user_profile_birthday_visibility, user_profile_current_location_string, user_profile_current_location_string_visibility, user_profile_mood, user_profile_mood_visibility, user_profile_lat, user_profile_long, user_profile_long_lat_visibility, user_profile_relationship_status, user_profile_relationship_status_visibility, user_profile_relationship_interest, user_profile_relationship_interest_visibility, user_profile_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/set.json"
		return self.callAPI(params, headers: headers)
	}
	public func set(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "userprofile/v1/set.json"
		return self.callAPI(params)
	}
	/**
		A User Profile can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_profile_activity_status, user_profile_activity_status_visibility, user_profile_gender, user_profile_phone_number, user_profile_phone_number_visibility, user_profile_title, user_profile_title_visibility, user_profile_interests, user_profile_interests_visibility, user_profile_employer, user_profile_employer_visibility, user_profile_employer_address, user_profile_employer_address_visibility, user_profile_birthday, user_profile_birthday_visibility, user_profile_current_location_string, user_profile_current_location_string_visibility, user_profile_mood, user_profile_mood_visibility, user_profile_lat, user_profile_long, user_profile_long_lat_visibility, user_profile_relationship_status, user_profile_relationship_status_visibility, user_profile_relationship_interest, user_profile_relationship_interest_visibility, user_profile_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/set.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func set(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "userprofile/v1/set.json"
		self.callAPI(params, callback: callback)
	}
}

//
// userSettings API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtUserSettingsAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the UserSettings returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "usersettings/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "usersettings/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the UserSettings and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "usersettings/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "usersettings/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a User Settings returning a dispatch thread

	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "usersettings/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "usersettings/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a User Settings and uses a callback function

	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "usersettings/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "usersettings/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a UserSettings returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_setting_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "usersettings/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "usersettings/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a UserSettings and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_setting_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "usersettings/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "usersettings/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An UserSettings can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys user_setting_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "usersettings/v1/set.json"
		return self.callAPI(params, headers: headers)
	}
	public func set(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "usersettings/v1/set.json"
		return self.callAPI(params)
	}
	/**
		An UserSettings can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys user_setting_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func set(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "usersettings/v1/set.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func set(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "usersettings/v1/set.json"
		self.callAPI(params, callback: callback)
	}
}

//
// venue API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtVenueAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the Venues returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the Venues and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The users must have set a _long_lat their profiles returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys latitude, longitude, radius, venue_category, venue_lat, venue_long, after_date_time, limit, offset, venue_verified, most_popular, checked_in_contacts, specials
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/allnearby.json"
		return self.callAPI(params, headers: headers)
	}
	public func allNearby(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/allnearby.json"
		return self.callAPI(params)
	}
	/**
		The users must have set a _long_lat their profiles and uses a callback function

		:params: a NSDictionary<String,String> using the keys latitude, longitude, radius, venue_category, venue_lat, venue_long, after_date_time, limit, offset, venue_verified, most_popular, checked_in_contacts, specials
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/allnearby.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allNearby(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/allnearby.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a Venue returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_parent_id, venue_title, venue_handle, venue_syndication, venue_caption, venue_description, venue_address_first_line, venue_address_second_line, venue_address_city, venue_address_state, venue_address_zip, venue_phone_number, venue_url, venue_category, venue_price, venue_parking, venue_main_image_url, venue_cover_image_url, latitude, longitude, venue_verified, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a Venue and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_parent_id, venue_title, venue_handle, venue_syndication, venue_caption, venue_description, venue_address_first_line, venue_address_second_line, venue_address_city, venue_address_state, venue_address_zip, venue_phone_number, venue_url, venue_category, venue_price, venue_parking, venue_main_image_url, venue_cover_image_url, latitude, longitude, venue_verified, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a Venue returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_id, venue_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a Venue and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_id, venue_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to index 2d data returning a dispatch thread

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/ensureindex.json"
		return self.callAPI(params, headers: headers)
	}
	public func ensureIndex(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/ensureindex.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to index 2d data and uses a callback function

	*/
	public func ensureIndex(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/ensureindex.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func ensureIndex(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/ensureindex.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Venue returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_id, venue_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Venue and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_id, venue_handle
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An Venue can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_id, venue_parent_id, venue_title, venue_handle, venue_syndication, venue_caption, venue_description, venue_address_first_line, venue_address_second_line, venue_address_city, venue_address_state, venue_address_zip, venue_phone_number, venue_url, venue_category, venue_price, venue_parking, venue_main_image_url, venue_cover_image_url, latitude, longitude, venue_verified, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/update.json"
		return self.callAPI(params)
	}
	/**
		An Venue can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_id, venue_parent_id, venue_title, venue_handle, venue_syndication, venue_caption, venue_description, venue_address_first_line, venue_address_second_line, venue_address_city, venue_address_state, venue_address_zip, venue_phone_number, venue_url, venue_category, venue_price, venue_parking, venue_main_image_url, venue_cover_image_url, latitude, longitude, venue_verified, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/update.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged check in to a Venue returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_id, venue_handle, check_in_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func checkInAndJoin(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/checkinandjoin.json"
		return self.callAPI(params, headers: headers)
	}
	public func checkInAndJoin(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venue/v1/checkinandjoin.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged check in to a Venue and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_id, venue_handle, check_in_visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func checkInAndJoin(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/checkinandjoin.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func checkInAndJoin(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venue/v1/checkinandjoin.json"
		self.callAPI(params, callback: callback)
	}
}

//
// venueSpecial API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtVenueSpecialAPIObject: WhereYouAtAPIObject {
	/**
		An admin must be logged in to see all the Venues returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/all.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to see all the Venues and uses a callback function

		:params: a NSDictionary<String,String> using the keys limit, offset
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		The users must have set a _long_lat their profiles if it is not sent as a parameter returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys latitude, longitude, radius, venue_special_lat, venue_special_long, limit, offset, venue_special_verified, most_popular, checked_in_contacts
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/allnearby.json"
		return self.callAPI(params, headers: headers)
	}
	public func allNearby(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/allnearby.json"
		return self.callAPI(params)
	}
	/**
		The users must have set a _long_lat their profiles if it is not sent as a parameter and uses a callback function

		:params: a NSDictionary<String,String> using the keys latitude, longitude, radius, venue_special_lat, venue_special_long, limit, offset, venue_special_verified, most_popular, checked_in_contacts
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func allNearby(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/allnearby.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func allNearby(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/allnearby.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to create a Venue Special returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_special_parent_id, venue_special_title, venue_special_expiration_date, venue_special_syndication, venue_special_caption, venue_special_description, venue_special_price, venue_special_main_image_url, venue_special_cover_image_url, venue_special_verified, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/create.json"
		return self.callAPI(params, headers: headers)
	}
	public func create(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/create.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to create a Venue Special and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_special_parent_id, venue_special_title, venue_special_expiration_date, venue_special_syndication, venue_special_caption, venue_special_description, venue_special_price, venue_special_main_image_url, venue_special_cover_image_url, venue_special_verified, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func create(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/create.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func create(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/create.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to delete a Venue Special returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_special_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to delete a Venue Special and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_special_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An admin must be logged in to index 2d data returning a dispatch thread

	*/
	public func deleteExpired(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/deleteexpired.json"
		return self.callAPI(params, headers: headers)
	}
	public func deleteExpired(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/deleteexpired.json"
		return self.callAPI(params)
	}
	/**
		An admin must be logged in to index 2d data and uses a callback function

	*/
	public func deleteExpired(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/deleteexpired.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func deleteExpired(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/deleteexpired.json"
		self.callAPI(params, callback: callback)
	}
	/**
		A user must be logged in to get a Venue Special returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_special_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/get.json"
		return self.callAPI(params, headers: headers)
	}
	public func get(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/get.json"
		return self.callAPI(params)
	}
	/**
		A user must be logged in to get a Venue Special and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_special_id
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func get(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/get.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func get(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/get.json"
		self.callAPI(params, callback: callback)
	}
	/**
		An Venue can only be edited by the owner returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys venue_special_id, venue_special_expiration_date, venue_special_title, venue_special_syndication, venue_special_caption, venue_special_description, venue_special_url, venue_special_price, venue_special_main_image_url, venue_special_cover_image_url, venue_special_verified, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/update.json"
		return self.callAPI(params, headers: headers)
	}
	public func update(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "venuespecial/v1/update.json"
		return self.callAPI(params)
	}
	/**
		An Venue can only be edited by the owner and uses a callback function

		:params: a NSDictionary<String,String> using the keys venue_special_id, venue_special_expiration_date, venue_special_title, venue_special_syndication, venue_special_caption, venue_special_description, venue_special_url, venue_special_price, venue_special_main_image_url, venue_special_cover_image_url, venue_special_verified, visibility
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func update(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/update.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func update(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "venuespecial/v1/update.json"
		self.callAPI(params, callback: callback)
	}
}

//
// verification API Object, inheriting from WhereYouAtAPIObject
//
public class WhereYouAtVerificationAPIObject: WhereYouAtAPIObject {
	/**
		If the user is an admin of rhcloud.com, all Verifications will be returned returning a dispatch thread

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/all.json"
		return self.callAPI(params, headers: headers)
	}
	public func all(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/all.json"
		return self.callAPI(params)
	}
	/**
		If the user is an admin of rhcloud.com, all Verifications will be returned and uses a callback function

	*/
	public func all(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/all.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func all(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/all.json"
		self.callAPI(params, callback: callback)
	}
	/**
		If a parent_id is not passed, the parent_id will be that of the logged in user.  Using this API, an email will be sent to the user. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys parent_id, verification_value
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func createUserEmailValidation(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/createuseremailvalidation.json"
		return self.callAPI(params, headers: headers)
	}
	public func createUserEmailValidation(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/createuseremailvalidation.json"
		return self.callAPI(params)
	}
	/**
		If a parent_id is not passed, the parent_id will be that of the logged in user.  Using this API, an email will be sent to the user. and uses a callback function

		:params: a NSDictionary<String,String> using the keys parent_id, verification_value
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func createUserEmailValidation(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/createuseremailvalidation.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func createUserEmailValidation(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/createuseremailvalidation.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method removes the user_email_address from the non_validate_email_address list. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys verification_string, user_email_address
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func verifyUserEmailAddress(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/verifyuseremail.json"
		return self.callAPI(params, headers: headers)
	}
	public func verifyUserEmailAddress(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/verifyuseremail.json"
		return self.callAPI(params)
	}
	/**
		This method removes the user_email_address from the non_validate_email_address list. and uses a callback function

		:params: a NSDictionary<String,String> using the keys verification_string, user_email_address
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func verifyUserEmailAddress(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/verifyuseremail.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func verifyUserEmailAddress(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/verifyuseremail.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method is similar to logging out another user.  An admin must be logged in. returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys verification_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/delete.json"
		return self.callAPI(params, headers: headers)
	}
	public func delete(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/delete.json"
		return self.callAPI(params)
	}
	/**
		This method is similar to logging out another user.  An admin must be logged in. and uses a callback function

		:params: a NSDictionary<String,String> using the keys verification_string
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func delete(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/delete.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func delete(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/delete.json"
		self.callAPI(params, callback: callback)
	}
	/**
		This method will reset a password if a user is logged in returning a dispatch thread

		:params: NSDictionary<String,String>   	A dictionary having any of the keys verification_string, user_username, user_password
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func passwordReset(params: Dictionary<String, String>, headers: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/passwordreset.json"
		return self.callAPI(params, headers: headers)
	}
	public func passwordReset(params: Dictionary<String, String>) -> dispatch_semaphore_t {
		self.WhereYouAtAPIPath = "verification/v1/passwordreset.json"
		return self.callAPI(params)
	}
	/**
		This method will reset a password if a user is logged in and uses a callback function

		:params: a NSDictionary<String,String> using the keys verification_string, user_username, user_password
		:headers: NSDictionary<String,String>   	A dictionary having the keys X-API-Key, X-Auth-Token, X-Apple-Device-Id
	*/
	public func passwordReset(params: Dictionary<String, String>, headers: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/passwordreset.json"
		self.callAPI(params, headers: headers, callback: callback)
	}
	public func passwordReset(params: Dictionary<String, String>, callback:(NSDictionary) -> Void) -> Void {
		self.WhereYouAtAPIPath = "verification/v1/passwordreset.json"
		self.callAPI(params, callback: callback)
	}
}

//
// The library object
//
public class WhereYouAt  {
	public var APIKey: WhereYouAtAPIKeyAPIObject = WhereYouAtAPIKeyAPIObject()
	public var AuthToken: WhereYouAtAuthTokenAPIObject = WhereYouAtAuthTokenAPIObject()
	public var BlockedContent: WhereYouAtBlockedContentAPIObject = WhereYouAtBlockedContentAPIObject()
	public var CheckIn: WhereYouAtCheckInAPIObject = WhereYouAtCheckInAPIObject()
	public var Comment: WhereYouAtCommentAPIObject = WhereYouAtCommentAPIObject()
	public var ContactsList: WhereYouAtContactsListAPIObject = WhereYouAtContactsListAPIObject()
	public var Favorite: WhereYouAtFavoriteAPIObject = WhereYouAtFavoriteAPIObject()
	public var Feed: WhereYouAtFeedAPIObject = WhereYouAtFeedAPIObject()
	public var FeedElement: WhereYouAtFeedElementAPIObject = WhereYouAtFeedElementAPIObject()
	public var FeedFollow: WhereYouAtFeedFollowAPIObject = WhereYouAtFeedFollowAPIObject()
	public var Feedback: WhereYouAtFeedbackAPIObject = WhereYouAtFeedbackAPIObject()
	public var File: WhereYouAtFileAPIObject = WhereYouAtFileAPIObject()
	public var Functions: WhereYouAtFunctionsAPIObject = WhereYouAtFunctionsAPIObject()
	public var GeolocationBreadCrumb: WhereYouAtGeolocationBreadCrumbAPIObject = WhereYouAtGeolocationBreadCrumbAPIObject()
	public var Group: WhereYouAtGroupAPIObject = WhereYouAtGroupAPIObject()
	public var Image: WhereYouAtImageAPIObject = WhereYouAtImageAPIObject()
	public var ImageAlbum: WhereYouAtImageAlbumAPIObject = WhereYouAtImageAlbumAPIObject()
	public var Like: WhereYouAtLikeAPIObject = WhereYouAtLikeAPIObject()
	public var Message: WhereYouAtMessageAPIObject = WhereYouAtMessageAPIObject()
	public var MessageThread: WhereYouAtMessageThreadAPIObject = WhereYouAtMessageThreadAPIObject()
	public var ReportedContent: WhereYouAtReportedContentAPIObject = WhereYouAtReportedContentAPIObject()
	public var Search: WhereYouAtSearchAPIObject = WhereYouAtSearchAPIObject()
	public var SeenContent: WhereYouAtSeenContentAPIObject = WhereYouAtSeenContentAPIObject()
	public var Swipe: WhereYouAtSwipeAPIObject = WhereYouAtSwipeAPIObject()
	public var User: WhereYouAtUserAPIObject = WhereYouAtUserAPIObject()
	public var UserFilters: WhereYouAtUserFiltersAPIObject = WhereYouAtUserFiltersAPIObject()
	public var UserProfile: WhereYouAtUserProfileAPIObject = WhereYouAtUserProfileAPIObject()
	public var UserSettings: WhereYouAtUserSettingsAPIObject = WhereYouAtUserSettingsAPIObject()
	public var Venue: WhereYouAtVenueAPIObject = WhereYouAtVenueAPIObject()
	public var VenueSpecial: WhereYouAtVenueSpecialAPIObject = WhereYouAtVenueSpecialAPIObject()
	public var Verification: WhereYouAtVerificationAPIObject = WhereYouAtVerificationAPIObject()
}
    