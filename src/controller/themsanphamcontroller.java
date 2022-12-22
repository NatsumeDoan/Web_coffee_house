package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bo.loaibo;
import bo.sanphambo;

/**
 * Servlet implementation class themsanphamcontroller
 */
@WebServlet("/themsanphamcontroller")
public class themsanphamcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public themsanphamcontroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			RequestDispatcher rd = request.getRequestDispatcher("loginadmincontroller");
			rd.forward(request, response);
		} else {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");

			if (request.getContentLength() <= 0) {
				loaibo lbo= new loaibo();
				request.setAttribute("lstLoai", lbo.getloai());
				RequestDispatcher rd = request.getRequestDispatcher("themsanpham.jsp");
				rd.forward(request, response);
			} else {
				DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
				String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "img-sp";
				response.getWriter().println(dirUrl1);
				String nameimg = null;
				String masp = null;
				String tensp = null;
				String mota = null;
				Long gia = null ;
				String maloai = null;
				sanphambo sbo = new sanphambo();
				try {
					List<FileItem> fileItems = upload.parseRequest(request);// Lấy về các đối tượng gửi lên
					// duyệt qua các đối tượng gửi lên từ client gồm file và các control
					for (FileItem fileItem : fileItems) {
						if (!fileItem.isFormField()) {// Nếu ko phải các control=>upfile lên
							// xử lý file
							nameimg = fileItem.getName();
							if (!nameimg.equals("")) {
								// Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
								String dirUrl = request.getServletContext().getRealPath("") + File.separator
										+ "img-sp";
								File dir = new File(dirUrl);
								if (!dir.exists()) {// nếu ko có thư mục thì tạo ra
									dir.mkdir();
								}
								String fileImg = dirUrl + File.separator + nameimg;
								File file = new File(fileImg);// tạo file
								try {
									fileItem.write(file);// lưu file
									System.out.println("UPLOAD THÀNH CÔNG...!");
									System.out.println("Đường dẫn lưu file là: " + dirUrl);
								} catch (Exception e) {
									e.printStackTrace();
								}
							}
						} else// Neu la control
						{
							String tentk = fileItem.getFieldName();
							if (tentk.equals("txtmsp"))
								masp = (fileItem.getString());
							if (tentk.equals("txttsp"))
								tensp = (fileItem.getString());
							if (tentk.equals("txtmt"))
								mota = (fileItem.getString());
							if (tentk.equals("txtml"))
								maloai = (fileItem.getString());
							if (tentk.equals("txtg"))
								gia = Long.parseLong((fileItem.getString()));
						}
					}

				} catch (FileUploadException e) {
					e.printStackTrace();
				}
				sbo.addsp(masp, tensp, nameimg, mota, maloai, gia);
				RequestDispatcher rd = request.getRequestDispatcher("sanphamadmincontroller");
				rd.forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}