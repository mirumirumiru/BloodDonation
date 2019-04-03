package myweb;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BloodDonationDAO {
    private Connection con;

    //　初期処理（ドライバのロードとConnection,Statementオブジェクトの生成）
    public void init() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/Blood_donation?characterEncoding=UTF-8&serverTimezone=JST",
				"root",
				"Mysql@2019");
    }
    //　終了処理（Connectionのクローズ）
    public void term() throws SQLException {
        if (con != null) {
            con.close();
            con = null;
        }
    }

    //　すべての項目出力
    public List<BloodDonation> getAll() throws SQLException {
    	List<BloodDonation> items = new ArrayList<BloodDonation>();
		String query = "select r.id,r.date,r.p_code,r.d_code,place,address,tel,type,s_bp,d_bp,pulse," +
				"ALT,GTP,TP,ALB,AG,CHOL,GA,RBC,Hb,Ht,MCV,MCH,MCHC,WBC,PLT from record as r" +
				" inner join bd_place as p on r.p_code = p.p_code" +
				" inner join bd_type as t on r.d_code = t.d_code" +
				" order by r.id desc";
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery(query);
		while(res.next()) {
			int id = res.getInt("r.id");
			Date date = res.getDate("r.date");
			String p_code = res.getString("r.p_code");
			String d_code = res.getString("r.d_code");
			String place = res.getString("place");
			String address = res.getString("address");
			String tel = res.getString("tel");
			String type = res.getString("type");
			int s_bp = res.getInt("s_bp");
			int d_bp = res.getInt("d_bp");
			int pulse = res.getInt("pulse");
			int alt = res.getInt("ALT");
			int gtp = res.getInt("GTP");
			double tp = res.getDouble("TP");
			double alb = res.getDouble("ALB");
			double ag = res.getDouble("AG");
			int chol = res.getInt("CHOL");
			double ga = res.getDouble("GA");
			int rbc = res.getInt("RBC");
			double hb = res.getDouble("Hb");
			double ht = res.getDouble("Ht");
			double mcv = res.getDouble("MCV");
			double mch = res.getDouble("MCH");
			double mchc = res.getDouble("MCHC");
			int wbc = res.getInt("WBC");
			double plt = res.getDouble("PLT");
			BloodDonation item = new BloodDonation(id, date,p_code,d_code,place,address,tel,
					type,s_bp,d_bp,pulse,alt,gtp,tp,alb,ag,chol,ga,rbc,hb,ht,mcv,mch,mchc,wbc,plt);
			items.add(item);
		}
		res.close();
		st.close();
        return items;
    }


	//　選択された１行のみを取得
	public BloodDonation getRecord(int idno) throws SQLException {
		String query = "select r.id,r.date,place,type,s_bp,d_bp,pulse,ALT,GTP,TP," +
				"ALB,AG,CHOL,GA,RBC,Hb,Ht,MCV,MCH,MCHC,WBC,PLT from record as r" +
				" inner join bd_place as p on r.p_code = p.p_code" +
				" inner join bd_type as t on r.d_code = t.d_code" +
				" where r.id='"+ idno +"' order by r.id desc ";
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery(query);
		BloodDonation item = null;
		if(res.next()) {
			int id = res.getInt("r.id");
			Date date = res.getDate("r.date");
			String place = res.getString("place");
			String type = res.getString("type");
			int s_bp = res.getInt("s_bp");
			int d_bp = res.getInt("d_bp");
			int pulse = res.getInt("pulse");
			int alt = res.getInt("ALT");
			int gtp = res.getInt("GTP");
			double tp = res.getDouble("TP");
			double alb = res.getDouble("ALB");
			double ag = res.getDouble("AG");
			int chol = res.getInt("CHOL");
			double ga = res.getDouble("GA");
			int rbc = res.getInt("RBC");
			double hb = res.getDouble("Hb");
			double ht = res.getDouble("Ht");
			double mcv = res.getDouble("MCV");
			double mch = res.getDouble("MCH");
			double mchc = res.getDouble("MCHC");
			int wbc = res.getInt("WBC");
			double plt = res.getDouble("PLT");
			item = new BloodDonation(id, date,place,type,s_bp,d_bp,pulse,alt,gtp,tp,
					alb,ag,chol,ga,rbc,hb,ht,mcv,mch,mchc,wbc,plt);
		}
		res.close();
		st.close();
        return item;
    }

	//選択された１行を基準値により判定
	public BloodDonation decisionRecord(int idno) throws SQLException {
		String query = "select s_bp,d_bp,pulse,ALT,GTP,TP,ALB,AG,CHOL,GA,RBC," +
				"Hb,Ht,MCV,MCH,MCHC,WBC,PLT from record as r" +
				" inner join bd_place as p on r.p_code = p.p_code" +
				" inner join bd_type as t on r.d_code = t.d_code" +
				" where r.id='"+ idno +"' order by r.id desc ";
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery(query);
		BloodDonation item = null;
		if(res.next()) {
			String bpDc ="";
			if(res.getInt("s_bp") < 120 && res.getInt("d_bp") < 80 ) {
			    bpDc="至適血圧";
			}else if(res.getInt("s_bp") < 130 && res.getInt("d_bp") < 85 ) {
				bpDc="正常血圧";
			}else if(res.getInt("s_bp") < 140 && res.getInt("d_bp") < 90 ) {
				bpDc="正常高値血圧";
			}else if(res.getInt("s_bp") < 160 && res.getInt("d_bp") < 100 ) {
				bpDc="軽症高血圧";
			}else if(res.getInt("s_bp") < 180 && res.getInt("d_bp") < 110 ) {
				bpDc="中等症高血圧";
			}else {
				bpDc="重症高血圧";
			}
			String pulseDc ="";
			if(res.getInt("pulse")<60) {
				pulseDc = "遅い";
			}else if(res.getInt("pulse")<=90) {
				pulseDc = "正常";
			}else {
				pulseDc ="早い";
			}
			String altDc ="";
				if(res.getInt("ALT")<8) {
					altDc = "低";
				}else if(res.getInt("ALT")<=49) {
					altDc = "正常";
				}else {
					altDc ="高";
				}
			String gtpDc ="";
				if(res.getInt("GTP")<9) {
					gtpDc = "低";
				}else if(res.getInt("GTP")<=68){
					gtpDc = "正常";
				}else {
					gtpDc = "高";
				}
			String tpDc = "";
				if(res.getDouble("TP")<6.6) {
					tpDc="低";
				}else if(res.getDouble("TP")<=8.2) {
					tpDc="正常";
				}else {
					tpDc="高";
				}
			String albDc ="";
				if(res.getDouble("ALB")<4.0) {
					albDc="低";
				}else if(res.getDouble("ALB")<=5.1) {
					albDc="正常";
				}else {
					albDc="高";
				}
			String agDc ="";
			if(res.getDouble("AG")<1.3) {
				agDc="低";
			}else if(res.getDouble("AG")<=2.1) {
				agDc="正常";
			}else {
				agDc="高";
			}
			String cholDc ="";
			if(res.getInt("CHOL")<140) {
				cholDc="低";
			}else if(res.getInt("CHOL")<=259) {
				cholDc="正常";
			}else {
				cholDc="高";
			}
			String gaDc ="";
			if(res.getDouble("GA")<16.5) {
				gaDc="正常";
			}else {
				gaDc="高";
			}
			String rbcDc ="";
			if(res.getInt("RBC")<418) {
				rbcDc="低";
			}else if(res.getInt("RBC")<=560) {
				rbcDc="正常";
			}else {
				rbcDc="高";
			}
			String hbDc ="";
			if(res.getDouble("Hb")<12.7) {
				hbDc="低";
			}else if(res.getDouble("Hb")<=17.0) {
				hbDc="正常";
			}else {
				hbDc="高";
			}
			String htDc ="";
			if(res.getDouble("Ht")<38.8) {
				htDc="低";
			}else if(res.getDouble("Ht")<=50.0) {
				htDc="正常";
			}else {
				htDc="高";
			}
			String mcvDc ="";
			if(res.getDouble("MCV")<83.0) {
				mcvDc="低";
			}else if(res.getDouble("MCV")<=99.5) {
				mcvDc="正常";
			}else {
				mcvDc="高";
			}
			String mchDc ="";
			if(res.getDouble("MCH")<26.8) {
				mchDc="低";
			}else if(res.getDouble("MCH")<=33.5) {
				mchDc="正常";
			}else {
				mchDc="高";
			}
			String mchcDc ="";
			if(res.getDouble("MCHC")<31.7) {
				mchcDc="低";
			}else if(res.getDouble("MCHC")<=35.2) {
				mchcDc="正常";
			}else {
				mchcDc="高";
			}
			String wbcDc ="";
			if(res.getInt("WBC")<38) {
				wbcDc="低";
			}else if(res.getInt("WBC")<=89) {
				wbcDc="正常";
			}else {
				wbcDc="高";
			}
			String pltDc ="";
			if(res.getDouble("PLT")<17.0) {
				pltDc="低";
			}else if(res.getDouble("PLT")<=36.5) {
				pltDc="正常";
			}else {
				pltDc="高";
			}
			item = new BloodDonation(bpDc,pulseDc,altDc,gtpDc,tpDc,albDc,agDc,
					cholDc,gaDc,rbcDc,hbDc,htDc,mcvDc,mchDc,mchcDc,wbcDc,pltDc);
		}
		res.close();
		st.close();
        return item;
    }


	//　献血記録一覧を取得
	public List<BloodDonation> getAllList() throws SQLException {
		List<BloodDonation> items = new ArrayList<BloodDonation>();
		String query = "select r.id,r.date,place,type from record as r" +
				" inner join bd_place as p on r.p_code = p.p_code" +
				" inner join bd_type as t on r.d_code = t.d_code" +
				" order by r.id desc ";
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery(query);
		while(res.next()) {
			int id = res.getInt("r.id");
			Date date = res.getDate("r.date");
			String place = res.getString("place");
			String type = res.getString("type");
			BloodDonation item = new BloodDonation(id, date,place,type);
			items.add(item);
		}
		res.close();
		st.close();
		return items;
	}

	//TOPページ前回献血日の要素取得
	public BloodDonation getTopPage() throws SQLException {
		String query = "select r.id,r.date from record as r" +
				" inner join bd_place as p on r.p_code = p.p_code" +
				" inner join bd_type as t on r.d_code = t.d_code" +
				" where r.id order by r.id desc limit 1";
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery(query);
		BloodDonation item = null;
		if(res.next()) {
			int id = res.getInt("r.id");
			Date date = res.getDate("r.date");
			item = new BloodDonation(id, date);
		}
		res.close();
		st.close();
		return item;
	}

	//TOPページ次回全血献血日の要素取得
	public BloodDonation getNextDateA() throws SQLException {
		String query = "select nyear,nmonth,nday" +
				" from next_date where nid = 1";
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery(query);
		BloodDonation item = null;
		if(res.next()) {
			String nyear = res.getString("nyear");
			String nmonth = res.getString("nmonth");
			String nday = res.getString("nday");
			item = new BloodDonation(nyear,nmonth,nday);
		}
		res.close();
		st.close();
		return item;
	}

	//TOPページ次回成分献血日の要素取得
	public BloodDonation getNextDateB() throws SQLException {
		String query = "select nyear,nmonth,nday" +
				" from next_date where nid = 2";
		Statement st = con.createStatement();
		ResultSet res = st.executeQuery(query);
		BloodDonation item = null;
		if(res.next()) {
			String nyear = res.getString("nyear");
			String nmonth = res.getString("nmonth");
			String nday = res.getString("nday");
			item = new BloodDonation(nyear,nmonth,nday);
		}
		res.close();
		st.close();
        return item;
    }

	//　献血結果のDB登録
	public void insertRecord(BloodDonation results) throws SQLException{
		String query = "insert into record(id,date,p_code,d_code,s_bp,d_bp,pulse," +
				"ALT,GTP,TP,ALB,AG,CHOL,GA,RBC,Hb,Ht,MCV,MCH,MCHC,WBC,PLT)"+
	 			" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(query);
		st.setInt(1,results.getId());
		st.setDate(2, results.getDate());
		st.setString(3, results.getP_code());
		st.setString(4, results.getD_code());
		st.setInt(5, results.getS_bp());
		st.setInt(6, results.getD_bp());
		st.setInt(7, results.getPulse());
		st.setInt(8, results.getAlt());
		st.setInt(9, results.getGtp());
		st.setDouble(10, results.getTp());
		st.setDouble(11, results.getAlb());
		st.setDouble(12, results.getAg());
		st.setInt(13, results.getChol());
		st.setDouble(14, results.getGa());
		st.setInt(15, results.getRbc());
		st.setDouble(16, results.getHb());
		st.setDouble(17, results.getHt());
		st.setDouble(18, results.getMcv());
		st.setDouble(19, results.getMch());
		st.setDouble(20, results.getMchc());
		st.setInt(21, results.getWbc());
		st.setDouble(22, results.getPlt());
		st.executeUpdate();
		st.close();
	}

	//　献血結果のDB更新
	public void updateRecord(BloodDonation results) throws SQLException{
		String query = "update record set "
				+ "s_bp=?,d_bp=?,pulse=?,ALT=?,GTP=?,TP=?,ALB=?,"
				+ "AG=?,CHOL=?,GA=?,RBC=?,Hb=?,Ht=?,MCV=?,"
				+ "MCH=?,MCHC=?,WBC=?,PLT=? where id=?";
		PreparedStatement st = con.prepareStatement(query);
		st.setInt(1, results.getS_bp());
		st.setInt(2, results.getD_bp());
		st.setInt(3, results.getPulse());
		st.setInt(4, results.getAlt());
		st.setInt(5, results.getGtp());
		st.setDouble(6, results.getTp());
		st.setDouble(7, results.getAlb());
		st.setDouble(8, results.getAg());
		st.setInt(9, results.getChol());
		st.setDouble(10, results.getGa());
		st.setInt(11, results.getRbc());
		st.setDouble(12, results.getHb());
		st.setDouble(13, results.getHt());
		st.setDouble(14, results.getMcv());
		st.setDouble(15, results.getMch());
		st.setDouble(16, results.getMchc());
		st.setInt(17, results.getWbc());
		st.setDouble(18, results.getPlt());
		st.setInt(19,results.getId());
		st.executeUpdate();
		st.close();
	}

	//　記録削除のDB更新
	public void deleteRecord(int id) throws SQLException{
		String query = "delete from record where id=?";
		PreparedStatement st = con.prepareStatement(query);
		st.setInt(1,id);
		st.executeUpdate();
		st.close();
	}

	//　次回全献血可能日のDB更新
	public void updateNextA(BloodDonation next) throws SQLException{
		String query = "update next_date set nyear=?,nmonth=?,nday=? where nid=?";
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1,next.getNyear());
		st.setString(2, next.getNmonth());
		st.setString(3, next.getNday());
		st.setString(4, next.getNid());
		st.executeUpdate();
		st.close();
	}

	//　次回成分献血可能日のDB更新
	public void updateNextB(BloodDonation next) throws SQLException{
		String query = "update next_date set nyear=?,nmonth=?,nday=? where nid=?";
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1,next.getNyear());
		st.setString(2, next.getNmonth());
		st.setString(3, next.getNday());
		st.setString(4, next.getNid());
		st.executeUpdate();
		st.close();
	}

}
