package kr.ac.kopo.perfume.model;

import org.springframework.web.multipart.MultipartFile;

public class Review {
	int rNum;
	String perfumeName;
	String rContents;
	String id;
	String pNum;
	String filename;
	String incense;
	String bottle;

	MultipartFile attach;
	
	

	public String getBottle() {
		return bottle;
	}

	public void setBottle(String bottle) {
		this.bottle = bottle;
	}

	public String getIncense() {
		return incense;
	}

	public void setIncense(String incense) {
		this.incense = incense;
	}

	public String getpNum() {
		return pNum;
	}

	public void setpNum(String pNum) {
		this.pNum = pNum;
	}

	

	public MultipartFile getAttach() {
		return attach;
	}

	public void setAttach(MultipartFile attach) {
		this.attach = attach;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public String getPerfumeName() {
		return perfumeName;
	}

	public void setPerfumeName(String perfumeName) {
		this.perfumeName = perfumeName;
	}

	public String getrContents() {
		return rContents;
	}

	public void setrContents(String rContents) {
		this.rContents = rContents;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
