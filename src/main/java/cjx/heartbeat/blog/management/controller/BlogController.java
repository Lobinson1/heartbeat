package cjx.heartbeat.blog.management.controller;

import cjx.heartbeat.blog.management.entity.Blog;
import cjx.heartbeat.blog.management.service.BlogService;
import cjx.heartbeat.blog.management.service.TypeService;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/10/16
 */
@Controller
@RequestMapping("manager/blog")
public class BlogController extends BaseController {

	private final BlogService blogService;
	private final TypeService typeService;

	@Value("${upload.path}")
	private String UPLOAD_PATH;

	@Autowired
	public BlogController(BlogService blogService, TypeService typeService) {
		this.blogService = blogService;
		this.typeService = typeService;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String blog(Model model) {
		long count = blogService.count();
		model.addAttribute("totalCount", count);
		return "manager/index";
	}

	@RequestMapping("list")
	@ResponseBody
	public List<Blog> list(Integer pageIndex, Integer pageSize) {
		return blogService.getPageList(pageIndex, pageSize);
	}

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(Model model) {
		model.addAttribute("blogType", typeService.getAll());
		return "manager/blog/insert";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	@ResponseBody
	public String insert(HttpServletRequest request, Blog blog) {
		if (blogService.save(blog) == null) {
			return Error("创建新博失败");
		}
		return Success("创建成功");
	}

	@RequestMapping("checkTitle/{title}")
	public String checkTitle(@PathVariable String title) {
		return blogService.checkTitle(title) ? Success("标题可用") : False("标题已存在");
	}

	@RequestMapping("/upload")
	@ResponseBody
	public JSONObject uploadIMG(MultipartHttpServletRequest request) {
		Map<String, MultipartFile> map = request.getFileMap();
		JSONObject object = new JSONObject();
		InputStream is = null;
		BufferedOutputStream bos = null;
		FileOutputStream fos = null;
		try {
			List<String> list = new ArrayList<>();
			for (String s : map.keySet()) {
				String fileName = getFileName(s);
				File file = new File(UPLOAD_PATH + fileName);
				list.add("/manager/blog/getFile?filename=" + URLEncoder.encode(fileName, "UTF-8"));
				// 判断文件路径是否存在
				if (!file.getParentFile().exists()) {
					// 文件路径不存在时，创建保存文件所需要的路径
					file.getParentFile().mkdirs();
				}
				// 创建文件（这是个空文件，用来写入上传过来的文件的内容）
				file.createNewFile();
				MultipartFile multipartFile = map.get(s);
				is = multipartFile.getInputStream();
				byte[] b = new byte[1024];
				fos = new FileOutputStream(file);
				bos = new BufferedOutputStream(fos);
				while (is.read(b) > 0) {
					bos.write(b);
				}
			}
			object.put("errno", 0);
			object.put("data", list.toArray());
		} catch (Exception e) {
			e.printStackTrace();
			object.put("errno", 1);
		} finally {
			try {
				if (is != null) {
					is.close();
				}
				if (bos != null) {
					bos.close();
				}
				if (fos != null) {
					fos.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
				object.put("errno", 1);
			}
		}
		return object;
	}

	@RequestMapping("getFile")
	@ResponseBody
	public void getFile(String filename, HttpServletResponse response) {
		File file = new File(UPLOAD_PATH + filename);
		OutputStream os = null;
		FileInputStream fis = null;
		try {
			os = response.getOutputStream();
			fis = new FileInputStream(file);
			byte[] b = new byte[1024];
			while (fis.read(b) > 0) {
				os.write(b);
			}
			os.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (os != null) {
					os.close();
				}
				if (fis != null) {
					fis.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private String getFileName(String s) {
		return "/" + new SimpleDateFormat("yyyyMMdd").format(new Date()) + "/" + DigestUtils.md2Hex(s);
	}
}
