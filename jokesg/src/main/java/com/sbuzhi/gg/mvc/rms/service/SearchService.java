package com.sbuzhi.gg.mvc.rms.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.ParseException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.mvc.rms.entity.Album;
import com.sbuzhi.gg.mvc.rms.entity.Videos;
import com.sbuzhi.gg.web.service.BaseService;
/**
 * 第三方搜索接口Service
 * @author stealth.Lee
 * @date 2016年12月12日 上午9:35:40
 */
@Service
@Transactional(readOnly = true)
public class SearchService extends BaseService{
	
	/**
	 * 腾讯搜索
	 * @param resp
	 * @return
	 * @throws JSONException
	 * @throws ParseException
	 * @throws IOException
	 */
	public List<Album> tencentSearch(String resp) throws JSONException,
			ParseException, IOException {
		List<Album> albums = null;
		if (StringUtils.isNotBlank(resp)) {
			logger.info("TencentSearch. resp={}", resp);
			JSONObject jsonResp = new JSONObject(resp);
			if (!jsonResp.has("head")) {
				return null;
			}
			JSONObject responseJson = jsonResp.getJSONObject("head");
			String rescode = responseJson.getString("msg");
			if ("OK".equals(rescode)) {
				albums = new ArrayList<Album>();
				JSONArray list = jsonResp.getJSONArray("list");
				for (int i = 0; i < list.length(); i++) {
					Album album = new Album();
					album.setName(list.getJSONObject(i).getString("title"));
//					album.setActor(actor);
//					album.setDirector(director);
					album.setUrl(list.getJSONObject(i).getString("url"));
					album.setPicUrl(list.getJSONObject(i).getString("pic"));
					album.setLanguage(list.getJSONObject(i).getString("language"));
					album.setScore(list.getJSONObject(i).getString("score"));
					album.setYear(list.getJSONObject(i).getString("year"));
					album.setVideoType(list.getJSONObject(i).getString("video_type"));
					album.setRemarks(list.getJSONObject(i).getString("desc"));

					if (list.getJSONObject(i).has("playlist") && !list.getJSONObject(i).getString("playlist").equals("null") && list.getJSONObject(i).getJSONObject("playlist").has("vsrcarray") 
				    		   && list.getJSONObject(i).getJSONObject("playlist").getJSONArray("vsrcarray").length() > 0
				    		   && list.getJSONObject(i).getJSONObject("playlist").getJSONArray("vsrcarray").getJSONObject(0).has("playlist")){
						JSONArray vsrcarray = list.getJSONObject(i).getJSONObject("playlist").getJSONArray("vsrcarray");
						JSONArray array = vsrcarray.getJSONObject(0).getJSONArray("playlist");
						Videos videos = null;
						for (int j = 0; j < array.length(); j++){
							videos = new Videos();
							album.setCnt(vsrcarray.getJSONObject(0).getInt("cnt") + "");
							videos.setId(array.getJSONObject(j).getString("id"));
							videos.setAlbumId(list.getJSONObject(i).getString("id"));
							videos.setName(array.getJSONObject(j).getString("title"));
							videos.setSubName(array.getJSONObject(j).getString("second_title"));
							videos.setUrl(array.getJSONObject(j).getString("url"));
							videos.setPicUrl(array.getJSONObject(j).getString("pic"));
							videos.setType(array.getJSONObject(j).getString("type"));
							videos.setLanguage(vsrcarray.getJSONObject(0).getString("language"));
							album.setVideos(videos);
						}
					}
					albums.add(album);
				}
			}
		}
		return albums;
	}
	
	/**
	 * 爱奇异搜索
	 * @param resp
	 * @return
	 * @throws JSONException 
	 */
	public List<Album> iqiySearch(String resp) throws JSONException{
		List<Album> albums = null;
		if (StringUtils.isNotBlank(resp)) {
			logger.info("爱奇异搜索. resp={}", resp);
			JSONObject jsonResp = new JSONObject(resp);
			if (!jsonResp.has("response")) {
				return null;
			}
			JSONObject response = jsonResp.getJSONObject("response");
			JSONObject header = response.getJSONObject("header");
			String rescode = header.getString("respcode");
			if ("0".equals(rescode)) {
				albums = new ArrayList<Album>();
				JSONArray list = response.getJSONObject("result").getJSONObject("albums").getJSONArray("album");
				for (int i = 0; i < list.length(); i++) {
					Album album = new Album();
					album.setName(list.getJSONObject(i).getString("title"));
					album.setActor(list.getJSONObject(i).getString("mainactors"));
					album.setDirector(list.getJSONObject(i).getString("directors"));
					album.setUrl(list.getJSONObject(i).getString("vedio_url"));
					album.setPicUrl(list.getJSONObject(i).getString("img"));
					album.setLanguage("");
					album.setScore(list.getJSONObject(i).getString("score"));
					album.setYear(list.getJSONObject(i).getString("year"));
					album.setVideoType(list.getJSONObject(i).getString("category_name"));
					album.setRemarks(list.getJSONObject(i).getString("desc"));
					if (list.getJSONObject(i).has("chnsets")){
						JSONArray array = list.getJSONObject(i).getJSONObject("chnsets").getJSONArray("chnset");
						Videos videos = null;
						System.out.println((array.length()));
						for (int j = 0; j < array.length(); j++){
							videos = new Videos();
							album.setCnt(list.getJSONObject(0).getString("tv_sets"));
							videos.setId(array.getJSONObject(j).getString("tv_id"));
							videos.setAlbumId(array.getJSONObject(j).getString("album_id"));
							videos.setName("");
							videos.setSubName("");
							videos.setUrl(array.getJSONObject(j).getString("vedio_url"));
							videos.setPicUrl("");
							videos.setType("");
							videos.setLanguage("");
							album.setVideos(videos);
						}
					}
					albums.add(album);
				}
			}
		}
		return albums;
	}
}
