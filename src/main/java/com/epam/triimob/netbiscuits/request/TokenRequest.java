package com.epam.triimob.netbiscuits.request;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import com.epam.triimob.netbiscuits.xml.Authentication;
import com.epam.triimob.netbiscuits.xml.Response;
import com.epam.triimob.netbiscuits.xml.Show;

public class TokenRequest {

	public String getApiToken() {
		return authentificationResponse.getData().getAuthentication()
				.getApiToken();

	}

	public Authentication getAuthentication() {
		return authentificationResponse.getData().getAuthentication();
	}

	public List<Show> getClips() {
		return searchResponse.getData().getClips().getClip();
	}

	private Response authentificationResponse;

	private Response searchResponse;

	public TokenRequest(String user, String password) {
		try {
			String body = "force_utc=true&remember_me=0&login=" + user
					+ "&password=" + password;
			// String body = "";
			URLConnection connection = new URL(
					"https://qa2.service.reutersinsider.com//security//authenticate.xml")
					.openConnection();
			((HttpURLConnection) connection).setRequestMethod("POST");
			connection.setDoInput(true);
			connection.setDoOutput(true);
			connection.setUseCaches(false);
			connection.setRequestProperty("Content-Type",
					"application/x-www-form-urlencoded");
			connection.setRequestProperty("Content-Length", "" + body.length());

			DataOutputStream outStream = new DataOutputStream(
					connection.getOutputStream());

			// Send request
			outStream.writeBytes(body);
			outStream.flush();
			outStream.close();

			InputStream is = connection.getInputStream();

			authentificationResponse = parseXML(is);
			is.close();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private Response parseXML(InputStream is) {
		JAXBContext ctx;
		try {
			ctx = JAXBContext.newInstance(Response.class);

			Unmarshaller um = ctx.createUnmarshaller();
			Response response = (Response) um.unmarshal(is);
			return response;
		} catch (JAXBException e) {
			e.printStackTrace();
		}
		return null;

	}

	public void searchRequest(String token) {

		try {
			String body = "<search_criteria><mode>any</mode><order>date</order><channel_id/><show_id/><includes><term><text>Playlist</text><type>dynamic:pl</type></term></includes><excludes></excludes><requires></requires><after_date></after_date><before_date></before_date></search_criteria>";
			String urlString;
			if (token == null) {
				urlString = "http://qa2.service.reutersinsider.com//services//search.xml";
			} else {
				urlString = "http://qa2.service.reutersinsider.com//services//search.xml?api_token="
						+ token;
			}

			URLConnection connection = new URL(urlString).openConnection();
			((HttpURLConnection) connection).setRequestMethod("POST");
			connection.setDoInput(true);
			connection.setDoOutput(true);
			connection.setUseCaches(false);
			connection.setRequestProperty("Content-Type",
					"application/x-www-form-urlencoded");
			connection.setRequestProperty("Content-Length", "" + body.length());

			DataOutputStream outStream = new DataOutputStream(
					connection.getOutputStream());

			// Send request
			outStream.writeBytes(body);
			outStream.flush();
			outStream.close();

			InputStream is = connection.getInputStream();

			searchResponse = parseXML(is);
			is.close();

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}
