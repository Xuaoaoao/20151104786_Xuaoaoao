﻿package com.entity;

public class Qiuzhuoxinxi {
    private Integer id;
	private String qiuzhuohao;
    private String addtime;

    

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
	
	public String getQiuzhuohao() {
        return qiuzhuohao;
    }
    public void setQiuzhuohao(String qiuzhuohao) {
        this.qiuzhuohao = qiuzhuohao == null ? null : qiuzhuohao.trim();
    }
        return zhuangtai;
    }
    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai == null ? null : zhuangtai.trim();
    }
        return meixiaoshijifei;
    }
    public void setMeixiaoshijifei(String meixiaoshijifei) {
        this.meixiaoshijifei = meixiaoshijifei == null ? null : meixiaoshijifei.trim();
    }
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? null : beizhu.trim();
    }
	
	
    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }
}
//   设置字段信息