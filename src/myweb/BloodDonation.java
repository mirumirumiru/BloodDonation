package myweb;

import java.sql.Date;

public class BloodDonation {

	private int id ;
	private Date date ;
	private String p_code ;
	private String d_code ;
	private String place ;
	private String address ;
	private String tel ;
	private String type ;
	private int s_bp ;
	private int d_bp ;
	private int pulse ;
	private int alt ;
	private int gtp ;
	private double tp ;
	private double alb ;
	private double ag ;
	private int chol ;
	private double ga ;
	private int rbc ;
	private double hb ;
	private double ht ;
	private double mcv ;
	private double mch ;
	private double mchc ;
	private int wbc ;
	private double plt ;

	private String nid ;
	private String nyear ;
	private String nmonth ;
	private String nday ;

	private String bpDc;
	private String pulseDc;
	private String altDc;
	private String gtpDc;
	private String tpDc;
	private String albDc;
	private String agDc;
	private String cholDc;
	private String gaDc;
	private String rbcDc;
	private String hbDc;
	private String htDc;
	private String mcvDc;
	private String mchDc;
	private String mchcDc;
	private String wbcDc;
	private String pltDc;

	public BloodDonation(int id, Date date, String p_code, String d_code, String place, String address, String tel,
			String type, int s_bp, int d_bp, int pulse, int alt, int gtp, double tp, double alb, double ag, int chol,
			double ga, int rbc, double hb, double ht, double mcv, double mch, double mchc, int wbc, double plt,
			String nid, String nyear, String nmonth, String nday) {
		super();
		this.id = id;
		this.date = date;
		this.p_code = p_code;
		this.d_code = d_code;
		this.place = place;
		this.address = address;
		this.tel = tel;
		this.type = type;
		this.s_bp = s_bp;
		this.d_bp = d_bp;
		this.pulse = pulse;
		this.alt = alt;
		this.gtp = gtp;
		this.tp = tp;
		this.alb = alb;
		this.ag = ag;
		this.chol = chol;
		this.ga = ga;
		this.rbc = rbc;
		this.hb = hb;
		this.ht = ht;
		this.mcv = mcv;
		this.mch = mch;
		this.mchc = mchc;
		this.wbc = wbc;
		this.plt = plt;
		this.nid = nid;
		this.nyear = nyear;
		this.nmonth = nmonth;
		this.nday = nday;
	}

	public BloodDonation(int id, Date date, String p_code, String d_code, String place, String address, String tel,
			String type, int s_bp, int d_bp, int pulse, int alt, int gtp, double tp, double alb, double ag, int chol,
			double ga, int rbc, double hb, double ht, double mcv, double mch, double mchc, int wbc, double plt) {
		super();
		this.id = id;
		this.date = date;
		this.p_code = p_code;
		this.d_code = d_code;
		this.place = place;
		this.address = address;
		this.tel = tel;
		this.type = type;
		this.s_bp = s_bp;
		this.d_bp = d_bp;
		this.pulse = pulse;
		this.alt = alt;
		this.gtp = gtp;
		this.tp = tp;
		this.alb = alb;
		this.ag = ag;
		this.chol = chol;
		this.ga = ga;
		this.rbc = rbc;
		this.hb = hb;
		this.ht = ht;
		this.mcv = mcv;
		this.mch = mch;
		this.mchc = mchc;
		this.wbc = wbc;
		this.plt = plt;
	}

	public BloodDonation(int id, Date date, String place, String type, int s_bp, int d_bp, int pulse, int alt, int gtp,
			double tp, double alb, double ag, int chol, double ga, int rbc, double hb, double ht, double mcv,
			double mch, double mchc, int wbc, double plt) {
		super();
		this.id = id;
		this.date = date;
		this.place = place;
		this.type = type;
		this.s_bp = s_bp;
		this.d_bp = d_bp;
		this.pulse = pulse;
		this.alt = alt;
		this.gtp = gtp;
		this.tp = tp;
		this.alb = alb;
		this.ag = ag;
		this.chol = chol;
		this.ga = ga;
		this.rbc = rbc;
		this.hb = hb;
		this.ht = ht;
		this.mcv = mcv;
		this.mch = mch;
		this.mchc = mchc;
		this.wbc = wbc;
		this.plt = plt;
	}

	public BloodDonation(int id, int s_bp, int d_bp, int pulse, int alt, int gtp, double tp, double alb, double ag,
			int chol, double ga, int rbc, double hb, double ht, double mcv, double mch, double mchc, int wbc,
			double plt) {
		super();
		this.id = id;
		this.s_bp = s_bp;
		this.d_bp = d_bp;
		this.pulse = pulse;
		this.alt = alt;
		this.gtp = gtp;
		this.tp = tp;
		this.alb = alb;
		this.ag = ag;
		this.chol = chol;
		this.ga = ga;
		this.rbc = rbc;
		this.hb = hb;
		this.ht = ht;
		this.mcv = mcv;
		this.mch = mch;
		this.mchc = mchc;
		this.wbc = wbc;
		this.plt = plt;
	}

	public BloodDonation(int id, Date date, String place, String type) {
		super();
		this.id = id;
		this.date = date;
		this.place = place;
		this.type = type;
	}

	public BloodDonation(int id, Date date) {
		super();
		this.id = id;
		this.date = date;
	}

	public BloodDonation(int id) {
		super();
		this.id = id;
	}

	public BloodDonation(String nyear, String nmonth, String nday) {
		super();
		this.nyear = nyear;
		this.nmonth = nmonth;
		this.nday = nday;
	}

	public BloodDonation(String nid, String nyear, String nmonth, String nday) {
		super();
		this.nid = nid;
		this.nyear = nyear;
		this.nmonth = nmonth;
		this.nday = nday;
	}

	public BloodDonation(String bpDc, String pulseDc, String altDc, String gtpDc, String tpDc, String albDc, String agDc,
			String cholDc, String gaDc, String rbcDc, String hbDc, String htDc, String mcvDc, String mchDc,
			String mchcDc, String wbcDc, String pltDc) {
		super();
		this.bpDc = bpDc;
		this.pulseDc = pulseDc;
		this.altDc = altDc;
		this.gtpDc = gtpDc;
		this.tpDc = tpDc;
		this.albDc = albDc;
		this.agDc = agDc;
		this.cholDc = cholDc;
		this.gaDc = gaDc;
		this.rbcDc = rbcDc;
		this.hbDc = hbDc;
		this.htDc = htDc;
		this.mcvDc = mcvDc;
		this.mchDc = mchDc;
		this.mchcDc = mchcDc;
		this.wbcDc = wbcDc;
		this.pltDc = pltDc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getD_code() {
		return d_code;
	}

	public void setD_code(String d_code) {
		this.d_code = d_code;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getS_bp() {
		return s_bp;
	}

	public void setS_bp(int s_bp) {
		this.s_bp = s_bp;
	}

	public int getD_bp() {
		return d_bp;
	}

	public void setD_bp(int d_bp) {
		this.d_bp = d_bp;
	}

	public int getPulse() {
		return pulse;
	}

	public void setPulse(int pulse) {
		this.pulse = pulse;
	}

	public int getAlt() {
		return alt;
	}

	public void setAlt(int alt) {
		this.alt = alt;
	}

	public int getGtp() {
		return gtp;
	}

	public void setGtp(int gtp) {
		this.gtp = gtp;
	}

	public double getTp() {
		return tp;
	}

	public void setTp(double tp) {
		this.tp = tp;
	}

	public double getAlb() {
		return alb;
	}

	public void setAlb(double alb) {
		this.alb = alb;
	}

	public double getAg() {
		return ag;
	}

	public void setAg(double ag) {
		this.ag = ag;
	}

	public int getChol() {
		return chol;
	}

	public void setChol(int chol) {
		this.chol = chol;
	}

	public double getGa() {
		return ga;
	}

	public void setGa(double ga) {
		this.ga = ga;
	}

	public int getRbc() {
		return rbc;
	}

	public void setRbc(int rbc) {
		this.rbc = rbc;
	}

	public double getHb() {
		return hb;
	}

	public void setHb(double hb) {
		this.hb = hb;
	}

	public double getHt() {
		return ht;
	}

	public void setHt(double ht) {
		this.ht = ht;
	}

	public double getMcv() {
		return mcv;
	}

	public void setMcv(double mcv) {
		this.mcv = mcv;
	}

	public double getMch() {
		return mch;
	}

	public void setMch(double mch) {
		this.mch = mch;
	}

	public double getMchc() {
		return mchc;
	}

	public void setMchc(double mchc) {
		this.mchc = mchc;
	}

	public int getWbc() {
		return wbc;
	}

	public void setWbc(int wbc) {
		this.wbc = wbc;
	}

	public double getPlt() {
		return plt;
	}

	public void setPlt(double plt) {
		this.plt = plt;
	}

	public String getNid() {
		return nid;
	}

	public void setNid(String nid) {
		this.nid = nid;
	}

	public String getNyear() {
		return nyear;
	}

	public void setNyear(String nyear) {
		this.nyear = nyear;
	}

	public String getNmonth() {
		return nmonth;
	}

	public void setNmonth(String nmonth) {
		this.nmonth = nmonth;
	}

	public String getNday() {
		return nday;
	}

	public void setNday(String nday) {
		this.nday = nday;
	}

	public String getBpDc() {
		return bpDc;
	}

	public void setBpDc(String bpDc) {
		this.bpDc = bpDc;
	}

	public String getPulseDc() {
		return pulseDc;
	}

	public void setPulseDc(String pulseDc) {
		this.pulseDc = pulseDc;
	}

	public String getAltDc() {
		return altDc;
	}

	public void setAltDc(String altDc) {
		this.altDc = altDc;
	}

	public String getGtpDc() {
		return gtpDc;
	}

	public void setGtpDc(String gtpDc) {
		this.gtpDc = gtpDc;
	}

	public String getTpDc() {
		return tpDc;
	}

	public void setTpDc(String tpDc) {
		this.tpDc = tpDc;
	}

	public String getAlbDc() {
		return albDc;
	}

	public void setAlbDc(String albDc) {
		this.albDc = albDc;
	}

	public String getAgDc() {
		return agDc;
	}

	public void setAgDc(String agDc) {
		this.agDc = agDc;
	}

	public String getCholDc() {
		return cholDc;
	}

	public void setCholDc(String cholDc) {
		this.cholDc = cholDc;
	}

	public String getGaDc() {
		return gaDc;
	}

	public void setGaDc(String gaDc) {
		this.gaDc = gaDc;
	}

	public String getRbcDc() {
		return rbcDc;
	}

	public void setRbcDc(String rbcDc) {
		this.rbcDc = rbcDc;
	}

	public String getHbDc() {
		return hbDc;
	}

	public void setHbDc(String hbDc) {
		this.hbDc = hbDc;
	}

	public String getHtDc() {
		return htDc;
	}

	public void setHtDc(String htDc) {
		this.htDc = htDc;
	}

	public String getMcvDc() {
		return mcvDc;
	}

	public void setMcvDc(String mcvDc) {
		this.mcvDc = mcvDc;
	}

	public String getMchDc() {
		return mchDc;
	}

	public void setMchDc(String mchDc) {
		this.mchDc = mchDc;
	}

	public String getMchcDc() {
		return mchcDc;
	}

	public void setMchcDc(String mchcDc) {
		this.mchcDc = mchcDc;
	}

	public String getWbcDc() {
		return wbcDc;
	}

	public void setWbcDc(String wbcDc) {
		this.wbcDc = wbcDc;
	}

	public String getPltDc() {
		return pltDc;
	}

	public void setPltDc(String pltDc) {
		this.pltDc = pltDc;
	}

}