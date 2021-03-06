package kr.ac.kopo.perfume.util;

public class Pager2 {
	float total;
	
	int page = 1;
	int perPage = 3;
	
	String search;
	String keyword;
	
	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}
	
	public String getPagination() {
		String html = "";
		
		
		html += "<div class='pager_num'>";
		
		int maxPage = (int) Math.ceil( total / perPage );
		for(int i=1; i <= maxPage; i++) {
			html += "<span class=\"";
			if(page == i)
				html += "act";
			else
				html+= "pass";
			html += "\"><a href=\"?page="+ i;
			html += " \" style=\"color:black\" >" + i;
			html += "</a></span>";
		}
		html += "</div>";
		
		
		return html;
	}
	
	public int getStart() {
		return (page - 1) * perPage;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	
}
