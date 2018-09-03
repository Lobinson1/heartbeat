package cjx.heartbeat.blog.index.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

import static cjx.heartbeat.blog.utils.HttpUtils.getLocationByIP;
import static cjx.heartbeat.blog.utils.HttpUtils.sendGet;

/**
 * 天气接口
 *
 * @author chenjunxu
 * @date 2018/9/3
 */
@Controller
@RequestMapping("weather")
public class WeatherController {

	@Value("${weather.city-url}")
	private String searchCityUrl;
	@Value("${weather.url}")
	private String weatherUrl;
	@Value("${weather.key}")
	private String userKey;

	@RequestMapping("now")
	@ResponseBody
	public String now(HttpServletRequest request, String location) throws Exception {
		if (StringUtils.isNotBlank(location)) {
			location = getLocationByIP(request);
		}
		String city = sendGet(searchCityUrl, "key=" + userKey + "&location=" + location);
		JSONObject jsonObject = JSONObject.parseObject(city);
		String cid = jsonObject.getJSONArray("HeWeather6").getJSONObject(0).getJSONArray("basic").getJSONObject(0).getString("cid");
		System.out.println(city);
		String data = sendGet(weatherUrl, "key=8" + userKey + "&location=" + cid);
		JSONObject object = JSONObject.parseObject(data);
		JSONObject object1 = object.getJSONArray("HeWeather6").getJSONObject(0).getJSONObject("now");
		Map<String, String> params = new HashMap<>();
		params.put("hum", "相对湿度");
		params.put("vis", "能见度(公里)");
		params.put("pres", "大气压强");
		params.put("pcpn", "降水量");
		params.put("fl", "体感温度");
		params.put("wind_sc", "风力");
		params.put("wind_dir", "风向");
		params.put("wind_spd", "风速");
		params.put("cloud", "云量");
		params.put("wind_deg", "风向360度角");
		params.put("tmp", "温度");
		params.put("cond_txt", "天气状况描述");
		params.put("cond_code", "天气状况代码");
		JSONObject now = new JSONObject();
		for (String s : object1.keySet()) {
			now.put(params.get(s), object1.get(s));
		}
		return JSONObject.toJSONString(now, SerializerFeature.WriteMapNullValue);
	}

	@RequestMapping("dailyThree")
	@ResponseBody
	public String dailyThree(HttpServletRequest request, String location) throws Exception {
		if (StringUtils.isNotBlank(location)) {
			location = getLocationByIP(request);
		}
		String city = sendGet(searchCityUrl, "key=" + userKey + "&location=" + location);
		JSONObject jsonObject = JSONObject.parseObject(city);
		String cid = jsonObject.getJSONArray("HeWeather6").getJSONObject(0).getJSONArray("basic").getJSONObject(0).getString("cid");
		System.out.println(city);
		String data = sendGet(weatherUrl, "key=" + userKey + "&location=" + cid);
		JSONObject object = JSONObject.parseObject(data);
		JSONArray daily = object.getJSONArray("HeWeather6").getJSONObject(0).getJSONArray("daily_forecast");  // 未來天氣預告
		Map<String, String> dailyMap = new HashMap<>();
		dailyMap.put("date", "預報日期");
		dailyMap.put("sr", "日出時間");
		dailyMap.put("ss", "日落時間");
		dailyMap.put("mr", "月升時間");
		dailyMap.put("ms", "月落時間");
		dailyMap.put("tmp_max", "最高溫度");
		dailyMap.put("tmp_min", "最低溫度");
		dailyMap.put("cond_code_d", "白天天氣狀況代碼");
		dailyMap.put("cond_code_n", "晚間天氣狀況代碼");
		dailyMap.put("cond_txt_d", "白天天氣狀況描述");
		dailyMap.put("cond_txt_n", "晚間天氣狀況描述");
		dailyMap.put("wind_deg", "風向360角度");
		dailyMap.put("wind_dir", "風向");
		dailyMap.put("wind_sc", "風力");
		dailyMap.put("wind_spd", "風速(公里)");
		dailyMap.put("hum", "相對濕度");
		dailyMap.put("pcpn", "降水量");
		dailyMap.put("pop", "降水概率");
		dailyMap.put("pres", "大氣壓强");
		dailyMap.put("uv_index", "紫外綫强度指數");
		dailyMap.put("vis", "能見度(公里)");
		JSONArray ds = new JSONArray();
		for (Object o : daily) {
			JSONObject object2 = (JSONObject) o;
			JSONObject d = new JSONObject();
			for (String s : object2.keySet()) {
				d.put(dailyMap.get(s), object2.get(s));
			}
			ds.add(d);
		}
		return JSONObject.toJSONString(ds, SerializerFeature.WriteMapNullValue);
	}

}
